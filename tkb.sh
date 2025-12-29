#!/bin/bash

# ==============================================================================
# SCRIPT HIỂN THỊ THỜI KHÓA BIỂU
# Dữ liệu nguồn: HTML TKB Lớp CT2901 - ĐH Dân Lập Hải Phòng - Năm học 2025-2026
# ==============================================================================

# Khai báo màu sắc (ANSI Escape Codes)
C_RESET='\033[0m'
C_BORDER='\033[0;34m'  # Màu viền xanh dương đậm
C_HEADER='\033[1;37m'  # Màu tiêu đề trắng đậm
C_CA='\033[1;36m'      # Màu ca học (Cyan)
C_SUBJ_1='\033[1;33m'  # Vàng (Kiến trúc MT)
C_SUBJ_2='\033[1;32m'  # Xanh lá (Lập trình Python, AV2)
C_SUBJ_3='\033[1;35m'  # Tím (Nhập môn LT)
C_SUBJ_4='\033[1;31m'  # Đỏ/Cam (CNXH KH)
C_SUBJ_5='\033[1;96m'  # Xanh dương sáng (Bơi lội)
C_TEACHER='\033[0;37m' # Màu tên giảng viên
C_ROOM='\033[1;30;47m' # Nền trắng chữ đen (Phòng học)

# Hàm vẽ đường kẻ ngang
draw_line() {
    echo -e "${C_BORDER}+-------+-------+-------------------+-------------------+-------------------+-------------------+-------------------+-------------------+${C_RESET}"
}

# Hàm hiển thị header của cột
draw_header_row() {
    echo -e "${C_BORDER}|${C_HEADER} CA    ${C_BORDER}|${C_HEADER} TIẾT  ${C_BORDER}|${C_HEADER} THỨ 2             ${C_BORDER}|${C_HEADER} THỨ 3             ${C_BORDER}|${C_HEADER} THỨ 4             ${C_BORDER}|${C_HEADER} THỨ 5             ${C_BORDER}|${C_HEADER} THỨ 6             ${C_BORDER}|${C_HEADER} THỨ 7             ${C_BORDER}|${C_RESET}"
}

# Hàm định dạng ô dữ liệu (Căn giữa text nếu ngắn, cắt nếu dài)
fmt() {
    # $1: Nội dung, $2: Màu sắc, $3: Độ rộng (mặc định 17)
    local content="$1"
    local color="$2"
    local width=${3:-17}
    local len=${#content}
    
    if [ "$len" -gt "$width" ]; then
        content="${content:0:$(($width-2))}.."
    fi
    
    # Căn lề trái + padding
    printf "${color}%-*s${C_RESET}" "$width" "$content"
}

# Hàm hiển thị thông tin chung
show_info() {
    clear
    echo -e "${C_BORDER}╔════════════════════════════════════════════════════════════════════════════════════════════════════════╗${C_RESET}"
    echo -e "${C_BORDER}║${C_HEADER}                         TRƯỜNG ĐẠI HỌC DÂN LẬP HẢI PHÒNG - NĂM HỌC 2025-2026                         ${C_BORDER}║${C_RESET}"
    echo -e "${C_BORDER}║${C_HEADER}                                THỜI KHÓA BIỂU LỚP CT2901 - HỌC KỲ 2                                  ${C_BORDER}║${C_RESET}"
    echo -e "${C_BORDER}╚════════════════════════════════════════════════════════════════════════════════════════════════════════╝${C_RESET}"
    echo ""
}

# ------------------------------------------------------------------
# GIAI ĐOẠN 1
# ------------------------------------------------------------------
phase_1() {
    echo -e "${C_HEADER}  📅 GIAI ĐOẠN 1: Từ tuần 22 đến tuần 26 (05/01/2026 - 07/02/2026)${C_RESET}"
    draw_line
    draw_header_row
    draw_line
    
    # Sáng Tiết 1
    echo -e "${C_BORDER}|${C_CA} SÁNG  ${C_BORDER}| T.1   | ${C_SUBJ_1}$(fmt "Kiến trúc máy" $C_SUBJ_1) ${C_BORDER}|                   |                   |                   | ${C_SUBJ_2}$(fmt "Anh văn CS 2" $C_SUBJ_2) ${C_BORDER}|                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       | ${C_TEACHER}$(fmt "Vũ Trọng Chiến") ${C_BORDER}|                   |                   |                   | ${C_TEACHER}$(fmt "Mai Văn Sao")  ${C_BORDER}|                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       | ${C_ROOM} B201            ${C_BORDER}|                   |                   |                   | ${C_ROOM} B201            ${C_BORDER}|                   |${C_RESET}"
    draw_line
    
    # Sáng Tiết 2
    echo -e "${C_BORDER}|       | T.2   | ${C_SUBJ_1}$(fmt "Kiến trúc máy" $C_SUBJ_1) ${C_BORDER}|                   |                   |                   | ${C_SUBJ_2}$(fmt "Anh văn CS 2" $C_SUBJ_2) ${C_BORDER}|                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       | ${C_TEACHER}$(fmt "(Tiếp)")        ${C_BORDER}|                   |                   |                   | ${C_TEACHER}$(fmt "(Tiếp)")       ${C_BORDER}|                   |${C_RESET}"
    draw_line

    # Sáng Tiết 3
    echo -e "${C_BORDER}|       | T.3   |                   | ${C_SUBJ_2}$(fmt "Anh văn CS 2" $C_SUBJ_2) ${C_BORDER}|                   | ${C_SUBJ_2}$(fmt "Lập trình Py" $C_SUBJ_2) ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   | ${C_TEACHER}$(fmt "Mai Văn Sao")  ${C_BORDER}|                   | ${C_TEACHER}$(fmt "Đỗ Văn Tuyên") ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   | ${C_ROOM} B201            ${C_BORDER}|                   | ${C_ROOM} B201            ${C_BORDER}|                   |                   |${C_RESET}"
    draw_line

    # Sáng Tiết 4-5 (Gộp logic hiển thị)
    echo -e "${C_BORDER}|       | T.4-5 |                   | ${C_SUBJ_2}$(fmt "Anh văn CS 2" $C_SUBJ_2) ${C_BORDER}|                   | ${C_SUBJ_2}$(fmt "Lập trình Py" $C_SUBJ_2) ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   | ${C_TEACHER}$(fmt "(Tiếp)")        ${C_BORDER}|                   | ${C_TEACHER}$(fmt "(Tiếp)")       ${C_BORDER}|                   |                   |${C_RESET}"
    draw_line
    
    # Chiều Header
    echo -e "${C_BORDER}|${C_CA} CHIỀU ${C_BORDER}| T.1   |                   |                   | ${C_SUBJ_3}$(fmt "NM Lập Trình" $C_SUBJ_3) ${C_BORDER}| ${C_SUBJ_3}$(fmt "NM Lập Trình" $C_SUBJ_3) ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   |                   | ${C_TEACHER}$(fmt "Đỗ Văn Tuyên") ${C_BORDER}| ${C_TEACHER}$(fmt "Đỗ Văn Tuyên") ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   |                   | ${C_ROOM} B201            ${C_BORDER}| ${C_ROOM} B201            ${C_BORDER}|                   |                   |${C_RESET}"
    draw_line

    # Chiều Tiết 2-4
    echo -e "${C_BORDER}|       | T.2-4 |                   | ${C_SUBJ_1}$(fmt "Toán CC 3" $C_SUBJ_1)    ${C_BORDER}| ${C_SUBJ_3}$(fmt "NM Lập Trình" $C_SUBJ_3) ${C_BORDER}| ${C_SUBJ_3}$(fmt "NM Lập Trình" $C_SUBJ_3) ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   | ${C_TEACHER}$(fmt "Đoàn Thị Bích") ${C_BORDER}| ${C_TEACHER}$(fmt "(Tiếp)")        ${C_BORDER}| ${C_TEACHER}$(fmt "(Tiếp)")       ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   | ${C_ROOM} B201            ${C_BORDER}|                   |                   |                   |                   |${C_RESET}"
    draw_line
    echo ""
}

# ------------------------------------------------------------------
# GIAI ĐOẠN 2
# ------------------------------------------------------------------
phase_2() {
    echo -e "${C_HEADER}  📅 GIAI ĐOẠN 2: Từ tuần 30 đến tuần 34 (02/03/2026 - 04/04/2026)${C_RESET}"
    draw_line
    draw_header_row
    draw_line

    # Sáng (Giống GĐ 1)
    echo -e "${C_BORDER}|${C_CA} SÁNG  ${C_BORDER}| T.1-2 | ${C_SUBJ_1}$(fmt "Kiến trúc máy" $C_SUBJ_1) ${C_BORDER}|                   |                   |                   | ${C_SUBJ_2}$(fmt "Anh văn CS 2" $C_SUBJ_2) ${C_BORDER}|                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       | ${C_ROOM} B201            ${C_BORDER}|                   |                   |                   | ${C_ROOM} B201            ${C_BORDER}|                   |${C_RESET}"
    draw_line
    echo -e "${C_BORDER}|       | T.3-5 |                   | ${C_SUBJ_2}$(fmt "Anh văn CS 2" $C_SUBJ_2) ${C_BORDER}|                   | ${C_SUBJ_2}$(fmt "Lập trình Py" $C_SUBJ_2) ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   | ${C_ROOM} B201            ${C_BORDER}|                   | ${C_ROOM} B201            ${C_BORDER}|                   |                   |${C_RESET}"
    draw_line

    # Chiều (Khác)
    echo -e "${C_BORDER}|${C_CA} CHIỀU ${C_BORDER}| T.1   |                   |                   | ${C_SUBJ_3}$(fmt "NM Lập Trình" $C_SUBJ_3) ${C_BORDER}|                   |                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   |                   | ${C_TEACHER}$(fmt "Đỗ Văn Tuyên") ${C_BORDER}|                   |                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   |                   | ${C_ROOM} B201            ${C_BORDER}|                   |                   |                   |${C_RESET}"
    draw_line

    echo -e "${C_BORDER}|       | T.2-4 |                   | ${C_SUBJ_1}$(fmt "Toán CC 3" $C_SUBJ_1)    ${C_BORDER}| ${C_SUBJ_3}$(fmt "NM Lập Trình" $C_SUBJ_3) ${C_BORDER}| ${C_SUBJ_4}$(fmt "CNXH Khoa học" $C_SUBJ_4) ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   | ${C_TEACHER}$(fmt "Đoàn Thị Bích") ${C_BORDER}| ${C_TEACHER}$(fmt "(Tiếp)")        ${C_BORDER}| ${C_TEACHER}$(fmt "Phạm Thị Oanh") ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   | ${C_ROOM} B201            ${C_BORDER}|                   | ${C_ROOM} B201            ${C_BORDER}|                   |                   |${C_RESET}"
    draw_line
    echo ""
}

# ------------------------------------------------------------------
# GIAI ĐOẠN 3
# ------------------------------------------------------------------
phase_3() {
    echo -e "${C_HEADER}  📅 GIAI ĐOẠN 3: Từ tuần 35 đến tuần 39 (06/04/2026 - 09/05/2026)${C_RESET}"
    draw_line
    draw_header_row
    draw_line

    # Sáng
    echo -e "${C_BORDER}|${C_CA} SÁNG  ${C_BORDER}| T.1   | ${C_SUBJ_1}$(fmt "Kiến trúc máy" $C_SUBJ_1) ${C_BORDER}|                   |                   |                   | ${C_SUBJ_2}$(fmt "Anh văn CS 2" $C_SUBJ_2) ${C_BORDER}|                   |${C_RESET}"
    draw_line
    echo -e "${C_BORDER}|       | T.2   | ${C_SUBJ_1}$(fmt "Kiến trúc máy" $C_SUBJ_1) ${C_BORDER}|                   | ${C_SUBJ_5}$(fmt "Bơi lội" $C_SUBJ_5)       ${C_BORDER}|                   | ${C_SUBJ_2}$(fmt "Anh văn CS 2" $C_SUBJ_2) ${C_BORDER}|                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   |                   | ${C_ROOM} BEBOI           ${C_BORDER}|                   |                   |                   |${C_RESET}"
    draw_line
    echo -e "${C_BORDER}|       | T.3-5 |                   | ${C_SUBJ_2}$(fmt "Anh văn CS 2" $C_SUBJ_2) ${C_BORDER}| ${C_SUBJ_5}$(fmt "(Tiếp)" $C_SUBJ_5)        ${C_BORDER}| ${C_SUBJ_2}$(fmt "Lập trình Py" $C_SUBJ_2) ${C_BORDER}|                   |                   |${C_RESET}"
    draw_line

    # Chiều
    echo -e "${C_BORDER}|${C_CA} CHIỀU ${C_BORDER}| T.1   |                   |                   |                   |                   |                   |                   |${C_RESET}"
    draw_line
    echo -e "${C_BORDER}|       | T.2-4 |                   |                   | ${C_SUBJ_5}$(fmt "Bơi lội" $C_SUBJ_5)       ${C_BORDER}| ${C_SUBJ_4}$(fmt "CNXH Khoa học" $C_SUBJ_4) ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   |                   | ${C_TEACHER}$(fmt "Ngô Quốc Hưng") ${C_BORDER}| ${C_TEACHER}$(fmt "Phạm Thị Oanh") ${C_BORDER}|                   |                   |${C_RESET}"
    echo -e "${C_BORDER}|       |       |                   |                   | ${C_ROOM} BEBOI           ${C_BORDER}| ${C_ROOM} B201            ${C_BORDER}|                   |                   |${C_RESET}"
    draw_line
    echo ""
}

# --- MAIN ---
show_info

echo -e "Vui lòng chọn giai đoạn muốn xem:"
echo "1. Giai đoạn 1 (05/01/26 - 07/02/26)"
echo "2. Giai đoạn 2 (02/03/26 - 04/04/26)"
echo "3. Giai đoạn 3 (06/04/26 - 09/05/26)"
echo "4. Xem toàn bộ"
echo "0. Thoát"
echo -n "Lựa chọn: "
read choice

case $choice in
    1) show_info; phase_1 ;;
    2) show_info; phase_2 ;;
    3) show_info; phase_3 ;;
    4) show_info; phase_1; phase_2; phase_3 ;;
    0) exit ;;
    *) echo "Lựa chọn không hợp lệ." ;;
esac
