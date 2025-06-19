@echo off
REM ดึงชื่อไฟล์ .bat (ไม่เอานามสกุล) มาเป็นชื่อโปรเจกต์
set "PROJECT_NAME=%~n0"

REM สร้างโปรเจกต์ Next.js (ข้ามถ้าสร้างไว้แล้ว)
REM npx create-next-app@latest %PROJECT_NAME% --use-bun --eslint --app --js --import-alias "@/*" --tailwind --no-src-dir --turbopack

cd %PROJECT_NAME% || exit /b

REM สร้างโฟลเดอร์ app และไฟล์ย่อย
mkdir app
cd app
mkdir marketing
mkdir admin
mkdir auth
mkdir api
echo.> favicon.ico
echo.> globals.css
cd ..

REM สร้างโฟลเดอร์ components และย่อย
mkdir components
cd components
mkdir ui
mkdir modules
cd ..

REM สร้างโฟลเดอร์ core, providers, hooks, lib, constants, config, utils, clients
mkdir core
mkdir providers
mkdir hooks
mkdir lib
mkdir constants
mkdir config
mkdir utils
mkdir clients

REM สร้างไฟล์อื่นๆ
mkdir public
echo.> .gitignore
echo.> middleware.ts
echo.> .env.local
echo.> next.config.mjs
echo.> package.json

@echo off
REM สร้าง README.md ด้วยเนื้อหาโครงสร้าง Next.js 15+

echo # 🧱 โครงสร้างโปรเจกต์ Next.js 15+ > README.md
echo. >> README.md
echo โครงสร้างนี้เป็นแนวทางการจัดระเบียบไฟล์และโฟลเดอร์สำหรับโปรเจกต์ Next.js 15+ เพื่อให้ง่ายต่อการพัฒนา ดูแล และขยายระบบในอนาคต >> README.md
echo. >> README.md
echo ## โครงสร้างไฟล์หลัก >> README.md
echo. >> README.md
echo ^``` >> README.md
echo my-next-app/ >> README.md
echo ^| >> README.md
echo ^|-- app/ >> README.md
echo ^|   ^|-- (marketing)/         # กลุ่มเส้นทางสำหรับหน้าการตลาด >> README.md
echo ^|   ^|-- (admin)/             # กลุ่มเส้นทางสำหรับผู้ดูแลระบบ >> README.md
echo ^|   ^|-- (auth)/              # กลุ่มเส้นทางสำหรับการยืนยันตัวตน >> README.md
echo ^|   ^|-- api/                 # API endpoints (เช่น route.js/route.ts) >> README.md
echo ^|   ^|-- layout.js            # เลย์เอาต์หลักของแอป เช่น navbar/footer >> README.md
echo ^|   ^|-- page.js              # หน้า Home (root route) >> README.md
echo ^|   ^|-- favicon.ico          # ไอคอนเว็บไซต์ >> README.md
echo ^|   ^|-- globals.css          # CSS ส่วนกลางของทั้งแอป >> README.md
echo ^| >> README.md
echo ^|-- components/ >> README.md
echo ^|   ^|-- ui/                  # องค์ประกอบ UI พื้นฐาน เช่น Button, Input >> README.md
echo ^|   ^|-- modules/             # คอมโพเนนต์เฉพาะด้าน เช่น Chart, TableGroup >> README.md
echo ^| >> README.md
echo ^|-- core/                    # โค้ดหลักของแอป เช่น auth logic, state logic >> README.md
echo ^|-- providers/               # React Context Providers เช่น SessionProvider >> README.md
echo ^|-- hooks/                   # Custom React Hooks เช่น useAuth, useFetch >> README.md
echo ^|-- lib/                     # ฟังก์ชันช่วยเหลือ เช่น auth.js, fetcher.js >> README.md
echo ^|-- constants/               # ค่าคงที่ต่างๆ เช่น roles, paths, appConfig >> README.md
echo ^|-- config/                  # การตั้งค่า API baseURL, runtime config >> README.md
echo ^|-- utils/                   # ฟังก์ชันอรรถประโยชน์ เช่น formatDate >> README.md
echo ^|-- clients/                 # ตัวจัดการ API client เช่น axios.js >> README.md
echo ^| >> README.md
echo ^|-- node_modules/            # โฟลเดอร์เก็บ dependencies ที่ติดตั้ง >> README.md
echo ^|-- public/                  # ไฟล์สาธารณะ เช่น รูปภาพ ไอคอน >> README.md
echo ^|-- .gitignore               # รายการไฟล์ที่ไม่ต้องการให้ git track >> README.md
echo ^|-- middleware.ts            # Next.js Middleware (เช่น redirect, auth check) >> README.md
echo ^|-- .env.local               # ไฟล์เก็บ environment variables (ไม่ควร commit) >> README.md
echo ^|-- next.config.mjs          # การตั้งค่า Next.js >> README.md
echo ^|-- package.json             # ข้อมูล dependencies และ scripts >> README.md
echo ^``` >> README.md
echo. >> README.md
echo ## คำอธิบายแต่ละโฟลเดอร์/ไฟล์ >> README.md
echo. >> README.md
echo - **app/**: ศูนย์กลางของ App Router สำหรับเส้นทาง, เลย์เอาต์, หน้า, และ API routes >> README.md
echo - **components/**: รวมคอมโพเนนต์ React ที่นำกลับมาใช้ซ้ำได้ >> README.md
echo - **core/**: โค้ดหลักของแอป เช่น auth logic, state logic >> README.md
echo - **providers/**: React Context Providers เช่น SessionProvider >> README.md
echo - **hooks/**: Custom React Hooks ที่ใช้ซ้ำได้ >> README.md
echo - **lib/**: ฟังก์ชันช่วยเหลือ (helper functions) >> README.md
echo - **constants/**: ค่าคงที่ต่างๆ >> README.md
echo - **config/**: การตั้งค่าต่างๆ ของแอป เช่น API baseURL >> README.md
echo - **utils/**: ฟังก์ชันอรรถประโยชน์ >> README.md
echo - **clients/**: ตัวจัดการ API client >> README.md
echo - **node_modules/**: โฟลเดอร์ dependencies ที่ติดตั้ง >> README.md
echo - **public/**: ไฟล์สาธารณะ เช่น รูปภาพ ไอคอน >> README.md
echo - **.gitignore**: รายการไฟล์ที่ไม่ต้องการให้ git track >> README.md
echo - **middleware.ts**: Next.js Middleware (เช่น redirect, auth check) >> README.md
echo - **.env.local**: ไฟล์เก็บ environment variables (ไม่ควร commit) >> README.md
echo - **next.config.mjs**: การตั้งค่า Next.js >> README.md
echo - **package.json**: ข้อมูล dependencies และ scripts >> README.md
echo. >> README.md
echo --- >> README.md
echo. >> README.md
echo ^> โครงสร้างนี้ช่วยให้โปรเจกต์ Next.js มีความเป็นระเบียบ แยกส่วนตามหน้าที่ชัดเจน ง่ายต่อการพัฒนาและดูแลรักษาในระยะยาว >> README.md

echo create Structure Next.js 15+ complete!
pause