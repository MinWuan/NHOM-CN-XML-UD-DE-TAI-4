<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/HE_THONG_NHAN_SU">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>Hệ thống nhân sự</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f8fafc;
            margin: 20px;
          }
          h1 {
            color: #2b4d73;
            text-align: center;
          }
          h2 {
            color: #1a3d5c;
            border-bottom: 2px solid #ccc;
            padding-bottom: 5px;
            margin-top: 40px;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 25px;
          }
          th, td {
            border: 1px solid #ccc;
            padding: 8px 10px;
            text-align: left;
          }
          th {
            background-color: #e6f0ff;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
        </style>
      </head>
      <body>
        <h1>HỆ THỐNG NHÂN SỰ</h1>

        <!-- DANH SÁCH NHÂN VIÊN -->
        <h2>Danh sách nhân viên</h2>
        <table>
          <tr>
            <th>Mã NV</th>
            <th>Họ tên</th>
            <th>Ngày sinh</th>
            <th>Giới tính</th>
            <th>Địa chỉ</th>
            <th>Email</th>
            <th>SĐT</th>
          </tr>
          <xsl:for-each select="DS_NHAN_VIEN/NHAN_VIEN">
            <xsl:sort select="ho_ten" order="descending"/>
            <tr>
              <td><xsl:value-of select="ma_nv"/></td>
              <td><xsl:value-of select="ho_ten"/></td>
              <td><xsl:value-of select="ngay_sinh"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="gioi_tinh='true'">Nam</xsl:when>
                  <xsl:otherwise>Nữ</xsl:otherwise>
                </xsl:choose>
              </td>
              <td><xsl:value-of select="dia_chi"/></td>
              <td><xsl:value-of select="email"/></td>
              <td><xsl:value-of select="so_dien_thoai"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- PHÒNG BAN -->
        <h2>Danh sách phòng ban</h2>
        <table>
          <tr>
            <th>Mã PB</th>
            <th>Tên phòng ban</th>
            <th>Địa chỉ</th>
            <th>SĐT</th>
          </tr>
          <xsl:for-each select="DS_PHONG_BAN/PHONG_BAN">
            <tr>
              <td><xsl:value-of select="ma_pb"/></td>
              <td><xsl:value-of select="ten_phong_ban"/></td>
              <td><xsl:value-of select="dia_chi"/></td>
              <td><xsl:value-of select="so_dien_thoai"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- CHỨC VỤ -->
        <h2>Danh sách chức vụ</h2>
        <table>
          <tr>
            <th>Mã CV</th>
            <th>Tên chức vụ</th>
            <th>Lương cơ bản</th>
          </tr>
          <xsl:for-each select="DS_CHUC_VU/CHUC_VU">
            <tr>
              <td><xsl:value-of select="ma_cv"/></td>
              <td><xsl:value-of select="ten_chuc_vu"/></td>
              <td><xsl:value-of select="luong_co_ban"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- QUÁ TRÌNH LÀM VIỆC -->
        <h2>Danh sách quá trình làm việc</h2>
        <table>
          <tr>
            <th>Mã QTLV</th>
            <th>Mã NV</th>
            <th>Mã PB</th>
            <th>Mã CV</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
          </tr>
          <xsl:for-each select="DS_QTLV/QTLV">
            <tr>
              <td><xsl:value-of select="ma_qtlv"/></td>
              <td><xsl:value-of select="ma_nv"/></td>
              <td><xsl:value-of select="ma_pb"/></td>
              <td><xsl:value-of select="ma_cv"/></td>
              <td><xsl:value-of select="ngay_bat_dau"/></td>
              <td><xsl:value-of select="ngay_ket_thuc"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- CHẤM CÔNG -->
        <h2>Danh sách chấm công</h2>
        <table>
          <tr>
            <th>Mã CC</th>
            <th>Mã QTLV</th>
            <th>Tháng</th>
            <th>Năm</th>
            <th>Số ngày công</th>
            <th>Số giờ tăng ca</th>
          </tr>
          <xsl:for-each select="DS_CHAM_CONG/CHAM_CONG">
            <tr>
              <td><xsl:value-of select="ma_cc"/></td>
              <td><xsl:value-of select="ma_qtlv"/></td>
              <td><xsl:value-of select="thang"/></td>
              <td><xsl:value-of select="nam"/></td>
              <td><xsl:value-of select="so_ngay_cong"/></td>
              <td><xsl:value-of select="so_gio_tang_ca"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- DỰ ÁN -->
        <h2>Danh sách dự án</h2>
        <table>
          <tr>
            <th>Mã DA</th>
            <th>Tên dự án</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
            <th>Mô tả</th>
          </tr>
          <xsl:for-each select="DS_DU_AN/DU_AN">
            <tr>
              <td><xsl:value-of select="ma_da"/></td>
              <td><xsl:value-of select="ten_du_an"/></td>
              <td><xsl:value-of select="ngay_bat_dau"/></td>
              <td><xsl:value-of select="ngay_ket_thuc"/></td>
              <td><xsl:value-of select="mo_ta"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- THAM GIA DỰ ÁN -->
        <h2>Danh sách tham gia dự án</h2>
        <table>
          <tr>
            <th>Mã TGDA</th>
            <th>Mã NV</th>
            <th>Mã DA</th>
            <th>Vai trò</th>
            <th>Số giờ tham gia</th>
          </tr>
          <xsl:for-each select="DS_THAM_GIA_DU_AN/THAM_GIA_DU_AN">
            <tr>
              <td><xsl:value-of select="ma_tgda"/></td>
              <td><xsl:value-of select="ma_nv"/></td>
              <td><xsl:value-of select="ma_da"/></td>
              <td><xsl:value-of select="vai_tro"/></td>
              <td><xsl:value-of select="so_gio_tham_gia"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- BẢNG LƯƠNG -->
        <h2>Danh sách bảng lương</h2>
        <table>
          <tr>
            <th>Mã BL</th>
            <th>Mã QTLV</th>
            <th>Mã CC</th>
            <th>Tháng</th>
            <th>Năm</th>
            <th>Lương cơ bản</th>
            <th>Phụ cấp</th>
            <th>Tiền tăng ca</th>
            <th>Tổng lương</th>
          </tr>
          <xsl:for-each select="DS_BANG_LUONG/BANG_LUONG">
            <xsl:if test="luong_co_ban > 8000000">
              <tr>
                <td><xsl:value-of select="ma_bl"/></td>
                <td><xsl:value-of select="ma_qtlv"/></td>
                <td><xsl:value-of select="ma_cc"/></td>
                <td><xsl:value-of select="thang"/></td>
                <td><xsl:value-of select="nam"/></td>
                <td><xsl:value-of select="luong_co_ban"/></td>
                <td><xsl:value-of select="phu_cap"/></td>
                <td><xsl:value-of select="tien_tang_ca"/></td>
                <td><xsl:value-of select="tong_luong"/></td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>

        <p>Tổng số nhân viên: <xsl:value-of select="count(DS_NHAN_VIEN/NHAN_VIEN)"/></p>


        <xsl:if test="count(DS_NHAN_VIEN/NHAN_VIEN) > 9">
          <p>Giỏi</p>
        </xsl:if>

        <xsl:choose>
          <xsl:when test="count(DS_NHAN_VIEN/NHAN_VIEN) >= 8"><p>8</p></xsl:when>
          <xsl:when test="count(DS_NHAN_VIEN/NHAN_VIEN) >= 6.5"><p>6.5</p></xsl:when>
          <xsl:otherwise><p>5</p></xsl:otherwise>
        </xsl:choose>

        <xsl:for-each select="danh_sach/sinhvien">
          <xsl:sort select="ten" order="ascending"/>
          <p><xsl:value-of select="ten"/></p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
