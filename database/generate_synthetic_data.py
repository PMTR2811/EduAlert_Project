# -*- coding: utf-8 -*-
"""
EduAlert - generate_synthetic_data.py (Kiet)
Sinh database/synthetic_data.sql: 80 sinh vien mau (60% An toan, 25% Canh bao nhe, 15% Nguy co cao).
Nhan canh bao duoc tinh bang DUNG cong thuc cua RegulationServiceImpl (Thong tu 08, thang 4).
Chi dung thu vien co san cua Python.
"""
import os
import random
from datetime import date

random.seed(2026)  # co dinh seed de moi lan chay ra cung 1 bo du lieu

N_G1, N_G2, N_G3 = 48, 20, 12   # 60% / 25% / 15% cua 80 sinh vien
MAX_DROPOUT = 3                 # toi da 3 sinh vien bi buoc thoi hoc
G2_WARNING_COUNT = 12           # trong nhom 2: 12 SV dang Warning_L1, 8 SV con lai Normal nhung GPA giam

HO = ["Nguyễn", "Trần", "Lê", "Phạm", "Hoàng", "Huỳnh", "Phan", "Vũ", "Võ", "Đặng",
      "Bùi", "Đỗ", "Hồ", "Ngô", "Dương", "Lý"]
DEM_NAM = ["Văn", "Minh", "Quốc", "Đức", "Hữu", "Gia", "Thanh", "Anh"]
DEM_NU = ["Thị", "Ngọc", "Thùy", "Minh", "Khánh", "Phương", "Thanh", "Bảo"]
TEN_NAM = ["An", "Bình", "Cường", "Dũng", "Hải", "Hiếu", "Huy", "Khoa", "Long", "Nam",
           "Phúc", "Quân", "Sơn", "Thắng", "Tuấn", "Việt"]
TEN_NU = ["Anh", "Chi", "Dung", "Hà", "Hạnh", "Linh", "Mai", "Ngân", "Nhung", "Phương",
          "Quyên", "Thảo", "Trang", "Uyên", "Vy", "Yến"]
MAJORS = ["Công nghệ thông tin", "Kỹ thuật phần mềm", "Hệ thống thông tin",
          "Khoa học dữ liệu", "An toàn thông tin"]
HS_TYPES = ["THPT công lập", "THPT chuyên", "THPT tư thục", "GDTX"]


def sq(s):
    return "'" + str(s).replace("'", "''") + "'"


def nq(s):
    return "N" + sq(s)


def clamp(x, lo, hi):
    return max(lo, min(hi, x))


# ---------- Cong thuc quy che (sao chep logic RegulationServiceImpl) ----------
def evaluate(term_gpa, cum_gpa, prev_standings):
    idx = len(prev_standings) + 1
    year = (idx + 1) // 2
    if year <= 1:
        min_cum = 1.20
    elif year == 2:
        min_cum = 1.40
    elif year == 3:
        min_cum = 1.60
    else:
        min_cum = 1.80
    min_term = 0.80 if idx == 1 else 1.00
    if term_gpa >= min_term and cum_gpa >= min_cum:
        return "Normal"
    consecutive = 0
    for s in reversed(prev_standings):
        if s in ("Warning_L1", "Warning_L2"):
            consecutive += 1
        else:
            break
    if consecutive == 0:
        return "Warning_L1"
    if consecutive == 1:
        return "Warning_L2"
    return "Drop-out"


# ---------- Sinh diem tung hoc ky ----------
def gen_gpas(group, n):
    if group == 1:
        base = random.uniform(2.6, 3.6)
        g = [random.gauss(base, 0.25) for _ in range(n)]
        return [round(clamp(x, 2.0, 4.0), 2) for x in g]
    if group == 2:
        start, end = random.uniform(2.4, 3.0), random.uniform(1.1, 1.7)
    else:
        start, end = random.uniform(1.0, 1.5), random.uniform(0.3, 0.7)
    out = []
    for i in range(n):
        t = i / (n - 1) if n > 1 else 1
        out.append(round(clamp(start + (end - start) * t + random.gauss(0, 0.15), 0.2, 3.5), 2))
    return out


def simulate(group, n, start_year):
    gpas = gen_gpas(group, n)
    history, standings = [], []
    sum_w = sum_c = debt = 0
    for i in range(n):
        if group == 1:
            reg, failed = random.randint(15, 20), 0
        elif group == 2:
            reg, failed = random.randint(15, 18), random.choice([0, 0, 3, 3, 6])
        else:
            reg, failed = random.randint(14, 18), random.choice([0, 3, 6, 6, 9, 12])
        failed = min(failed, reg)
        passed = reg - failed
        sum_w += gpas[i] * reg
        sum_c += reg
        cum = round(sum_w / sum_c, 2)
        debt += failed
        standing = evaluate(gpas[i], cum, standings)
        standings.append(standing)
        y = start_year + i // 2
        history.append({
            "semester": "HK%d_%d_%d" % (i % 2 + 1, y, y + 1),
            "term_gpa": gpas[i], "cum_gpa": cum,
            "reg": reg, "passed": passed, "debt": debt, "standing": standing,
        })
        if standing == "Drop-out":
            break
    return history


def accepted(group, hist, g2_index, dropouts):
    last = hist[-1]
    if group == 1:
        return last["standing"] == "Normal" and last["debt"] == 0
    if group == 2:
        if last["debt"] < 3 or last["term_gpa"] >= 2.2:
            return False
        want = "Warning_L1" if g2_index < G2_WARNING_COUNT else "Normal"
        return last["standing"] == want
    if last["debt"] < 6:
        return False
    if last["standing"] == "Drop-out":
        return dropouts < MAX_DROPOUT
    return last["standing"] in ("Warning_L1", "Warning_L2")


def gen_admission(group):
    method = random.choices(["THPT", "HOC_BA", "DGNL"], weights=[60, 25, 15])[0]
    rng = {1: {"THPT": (22, 28.5), "HOC_BA": (23, 28), "DGNL": (850, 1100)},
           2: {"THPT": (18, 23), "HOC_BA": (19, 24), "DGNL": (720, 900)},
           3: {"THPT": (15, 19.5), "HOC_BA": (17, 21), "DGNL": (600, 780)}}[group][method]
    if method == "DGNL":
        raw = float(random.randint(int(rng[0]), int(rng[1])))
        std = round(raw / 1200.0 * 30.0, 2)
    else:
        raw = round(random.uniform(*rng), 2)
        std = round(raw, 2)
    return method, raw, std, random.choice(HS_TYPES)


def gen_plan(group, status):
    if status == "Drop-out":
        return None
    if group == 1:
        return (random.randint(17, 20), round(random.uniform(3.0, 3.5), 2),
                "Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.")
    if group == 2:
        return (random.randint(12, 16), round(random.uniform(2.0, 2.5), 2),
                "ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.")
    return (random.randint(9, 11), round(random.uniform(1.5, 2.0), 2),
            "Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.")


def build():
    students, dropouts = [], 0
    plan = [(1, N_G1), (2, N_G2), (3, N_G3)]
    for group, count in plan:
        n_choices = {1: [2, 4, 6, 8], 2: [4, 6, 8], 3: [4, 6, 6, 8]}[group]
        for k in range(count):
            for _ in range(2000):
                n = random.choice(n_choices)
                start_year = 2026 - n // 2
                hist = simulate(group, n, start_year)
                if accepted(group, hist, k, dropouts):
                    break
            else:
                raise RuntimeError("Khong sinh duoc sinh vien nhom %d" % group)
            if hist[-1]["standing"] == "Drop-out":
                dropouts += 1
            students.append({"group": group, "start_year": start_year, "hist": hist})
    random.shuffle(students)  # tron 3 nhom de ma SV khong theo thu tu nhom
    for i, s in enumerate(students, start=1):
        gender = random.choice(["Nam", "Nữ"])
        ho = random.choice(HO)
        if gender == "Nam":
            name = "%s %s %s" % (ho, random.choice(DEM_NAM), random.choice(TEN_NAM))
        else:
            name = "%s %s %s" % (ho, random.choice(DEM_NU), random.choice(TEN_NU))
        by = s["start_year"] - 18 - random.randint(0, 1)
        s.update({
            "code": "SV%02d%04d" % (s["start_year"] % 100, i),
            "name": name, "gender": gender,
            "dob": date(by, random.randint(1, 12), random.randint(1, 28)),
            "major": random.choice(MAJORS), "cohort": "K%02d" % (s["start_year"] % 100),
            "status": s["hist"][-1]["standing"],
            "adm": gen_admission(s["group"]),
        })
        s["plan"] = gen_plan(s["group"], s["status"])
    return students


def write_sql(students, path):
    L = []
    L.append("-- EduAlert synthetic_data.sql (tu dong sinh boi generate_synthetic_data.py)")
    L.append("-- %d sinh vien mau, ma SV bat dau bang 'SV'. Chay lai nhieu lan van an toan." % len(students))
    L.append("")
    for t in ("next_semester_plans", "risk_evaluations", "academic_progress",
              "admission_profiles", "students"):
        L.append("DELETE FROM %s WHERE student_code LIKE 'SV%%';" % t)
    L.append("")
    for s in students:
        L.append("-- %s | nhom %d | %s" % (s["code"], s["group"], s["status"]))
        L.append("INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) "
                 "VALUES (%s, %s, %s, %s, %s, %s, %s);" %
                 (sq(s["code"]), nq(s["name"]), sq(s["dob"].isoformat()), nq(s["gender"]),
                  nq(s["major"]), sq(s["cohort"]), sq(s["status"])))
        m, raw, std, hs = s["adm"]
        L.append("INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) "
                 "VALUES (%s, %s, %s, %s, %s);" % (sq(s["code"]), sq(m), raw, std, nq(hs)))
        for h in s["hist"]:
            L.append("INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, "
                     "credits_passed, debt_credits_cumulative, academic_standing) VALUES (%s, %s, %s, %s, %d, %d, %d, %s);" %
                     (sq(s["code"]), sq(h["semester"]), h["term_gpa"], h["cum_gpa"], h["reg"],
                      h["passed"], h["debt"], sq(h["standing"])))
        if s["plan"]:
            pc, tg, note = s["plan"]
            L.append("INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) "
                     "VALUES (%s, 'HK1_2026_2027', %d, %s, %s);" % (sq(s["code"]), pc, tg, nq(note)))
        L.append("")
    with open(path, "w", encoding="utf-8") as f:
        f.write("\n".join(L))


if __name__ == "__main__":
    out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "synthetic_data.sql")
    data = build()
    write_sql(data, out)
    print("Da tao:", out)
    print("Tong sinh vien:", len(data))
    for g, label in ((1, "Nhom 1 An toan"), (2, "Nhom 2 Canh bao nhe"), (3, "Nhom 3 Nguy co cao")):
        grp = [s for s in data if s["group"] == g]
        cnt = {}
        for s in grp:
            cnt[s["status"]] = cnt.get(s["status"], 0) + 1
        print("%s: %d SV -> %s" % (label, len(grp), cnt))
    print("Tong dong academic_progress:", sum(len(s["hist"]) for s in data))