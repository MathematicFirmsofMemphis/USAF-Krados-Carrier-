@echo off
title USAF - Krados Carrier Management System
color 1F

:: Initialize variables
set cargo=0
set fuel=100
set engine_status=off
set drone_count=10000
set drone_status=docked
set navigation_status=disabled

:main_menu
cls
echo ==================================================
echo               Welcome to USAF - Krados
echo             Carrier Management System
echo ==================================================
echo 1. Login
echo 2. Exit
echo ==================================================
set /p choice="Please choose an option (1-2): "

if "%choice%"=="1" goto login
if "%choice%"=="2" goto exit
goto main_menu

:login
@echo off
title USAF - Krados Carrier Management System
color 1F

:: Initialize variables
set cargo=0
set fuel=100
set engine_status=off
set drone_count=10000
set drone_status=docked
set navigation_status=disabled
@echo off
title USAF - Krados Carrier Management System
color 1F

:: Initialize variables
set cargo=0
set fuel=100
set engine_status=off
set drone_count=10000
set drone_status=docked
set navigation_status=disabled

:main_menu
cls
echo ==================================================
echo               Welcome to USAF - Krados
echo             Carrier Management System
echo ==================================================
echo 1. Login
echo 2. Exit
echo ==================================================
set /p choice="Please choose an option (1-2): "

if "%choice%"=="1" goto login
if "%choice%"=="2" goto exit
goto main_menu

:login
cls
set /p user="Enter Pilot Name: "
set /p pass="Enter Password: "
echo Authenticating...
:: Simulating a database check for username and password
if "%user%"=="pilot" if "%pass%"=="evepassword" (
    echo Authentication successful!
    pause
    goto carrier_menu
) else (
    echo Invalid username or password. Please try again.
    pause
    goto main_menu
)

:carrier_menu
cls
echo ==================================================
echo               Krados Carrier Control Panel
echo ==================================================
echo 1. Check Cargo
echo 2. Load Cargo
echo 3. Unload Cargo
echo 4. Engine Management
echo 5. Drone Management
echo 6. Navigation Management
echo 7. Cloud Computing
echo 8. Platform as a Service
echo 9. Infrastructure as a Service
echo 10. Log Out
echo ==================================================
set /p carrier_choice="Please choose an option (1-10): "

if "%carrier_choice%"=="1" goto check_cargo
if "%carrier_choice%"=="2" goto load_cargo
if "%carrier_choice%"=="3" goto unload_cargo
if "%carrier_choice%"=="4" goto engine_management
if "%carrier_choice%"=="5" goto drone_management
if "%carrier_choice%"=="6" goto navigation_management
if "%carrier_choice%"=="7" goto cloud_computing
if "%carrier_choice%"=="8" goto platform_as_a_service
if "%carrier_choice%"=="9" goto infrastructure_as_a_service
if "%carrier_choice%"=="10" goto main_menu
goto carrier_menu

:check_cargo
cls
echo Current cargo: %cargo% units
pause
goto carrier_menu

:load_cargo
cls
set /p cargo_type="Enter cargo type: "
if /i "%cargo_type%"=="hazardous" (
    echo Loading hazardous materials is not allowed.
    pause
) else if /i "%cargo_type%"=="explosives" (
    echo Loading explosives is not allowed.
    pause
) else if /i "%cargo_type%"=="ammo" (
    echo Loading ammunition is not allowed.
    pause
) else if /i "%cargo_type%"=="firearms" (
    echo Loading firearms is not allowed.
    pause
) else (
    set /a cargo+=1
    echo Loading cargo...
    echo Cargo loaded. Current cargo: %cargo% units
    pause
)
goto carrier_menu

:unload_cargo
cls
if %cargo% LEQ 0 (
    echo No cargo to unload.
) else (
    set /a cargo-=1
    echo Unloading cargo...
    echo Cargo unloaded. Current cargo: %cargo% units
)
pause
goto carrier_menu

:engine_management
cls
echo ==================================================
echo                Engine Management
echo ==================================================
echo 1. Check Fuel Levitation Level
echo 2. Refuel
echo 3. Start Engine
echo 4. Stop Engine
echo 5. Back to Main Menu
echo ==================================================
set /p engine_choice="Please choose an option (1-5): "

if "%engine_choice%"=="1" goto check_fuel
if "%engine_choice%"=="2" goto refuel
if "%engine_choice%"=="3" goto start_engine
if "%engine_choice%"=="4" goto stop_engine
if "%engine_choice%"=="5" goto carrier_menu
goto engine_management

:check_fuel
cls
echo Current fuel level: %fuel% units
pause
goto engine_management

:refuel
cls
set /a fuel=100
echo Refueling...
echo Fuel tank is now full. Current fuel level: %fuel% units
pause
goto engine_management

:start_engine
cls
if "%engine_status%"=="on" (
    echo Engine is already running.
) else (
    if %fuel% LEQ 0 (
        echo Insufficient fuel to start the engine.
    ) else (
        set engine_status=on
        echo Starting engines...
        echo Engines started. Current fuel level: %fuel% units
    )
)
pause
goto engine_management

:stop_engine
cls
if "%engine_status%"=="off" (
    echo Engine is already stopped.
) else (
    set engine_status=off
    echo Stopping engine...
    echo Engine stopped.
)
pause
goto engine_management

:drone_management
cls
echo ==================================================
echo                Drone Management
echo ==================================================
echo 1. Check Drone Status
echo 2. Launch Drones
echo 3. Dock Drones
echo 4. Back to Main Menu
echo ==================================================
set /p drone_choice="Please choose an option (1-4): "

if "%drone_choice%"=="1" goto check_drone_status
if "%drone_choice%"=="2" goto launch_drones
if "%drone_choice%"=="3" goto dock_drones
if "%drone_choice%"=="4" goto carrier_menu
goto drone_management

:check_drone_status
cls
echo Current drone status: %drone_status%
echo Number of drones: %drone_count%
pause
goto drone_management

:launch_drones
cls
if "%drone_status%"=="launched" (
    echo Drones are already launched.
) else (
    set drone_status=launched
    echo Launching drones...
    echo Drones launched. Number of drones: %drone_count%
)
pause
goto drone_management

:dock_drones
cls
if "%drone_status%"=="docked" (
    echo Drones are already docked.
) else (
    set drone_status=docked
    echo Docking drones...
    echo Drones docked. Number of drones: %drone_count%
)
pause
goto drone_management

:navigation_management
cls
echo ==================================================
echo            Navigation Management
echo ==================================================
echo 1. Enable Navigation
echo 2. Disable Navigation
echo 3. Back to Main Menu
echo ==================================================
set /p navigation_choice="Please choose an option (1-3): "

if "%navigation_choice%"=="1" goto enable_navigation
if "%navigation_choice%"=="2" goto disable_navigation
if "%navigation_choice%"=="3" goto carrier_menu
goto navigation_management

:enable_navigation
cls
if "%navigation_status%"=="enabled" (
    echo Navigation is already enabled.
) else (
    set navigation_status=enabled
    echo Navigation enabled.
)
pause
goto navigation_management

:disable_navigation
cls
if "%navigation_status%"=="disabled" (
    echo Navigation is already disabled.
) else (
    set navigation_status=disabled
    echo Navigation disabled.
)
pause
goto navigation_management

:cloud_computing
cls
echo ==================================================
echo            Cloud Computing
echo ==================================================
echo 1. Deploy Application
echo 2. Scale Resources
echo 3. Monitor Performance
echo 4. Back to Main Menu
echo ==================================================
set /p cloud_choice="Please choose an option (1-4): "

if "%cloud_choice%"=="1" goto deploy_application
if "%cloud_choice%"=="2" goto scale_resources
if "%cloud_choice%"=="3" goto monitor_performance
if "%cloud_choice%"=="4" goto carrier_menu
goto cloud_computing

:platform_as_a_service
cls
echo ==================================================
echo         Platform as a Service
echo ==================================================
echo 1. Deploy Application
echo 2. Scale Resources
echo 3. Monitor Performance
echo 4. Back to Main Menu
echo ==================================================
set /p platform_choice="Please choose an option (1-4): "

if "%platform_choice%"=="1" goto deploy_application
if "%platform_choice%"=="2" goto scale_resources
if "%platform_choice%"=="3" goto monitor_performance
if "%platform_choice%"=="4" goto carrier_menu
goto platform_as_a_service

:infrastructure_as_a_service
cls
echo ==================================================
echo         Infrastructure as a Service
echo ==================================================
echo 1. Provision Virtual Machines
echo 2. Manage Storage
echo 3. Configure Networking
echo 4. Back to Main Menu
echo ==================================================
set /p infrastructure_choice="Please choose an option (1-4): "

if "%infrastructure_choice%"=="1" goto provision_virtual_machines
if "%infrastructure_choice%"=="2" goto manage_storage
if "%infrastructure_choice%"=="3" goto configure_networking
if "%infrastructure_choice%"=="4" goto carrier_menu
goto infrastructure_as_a_service

:provision_virtual_machines
cls
echo Provisioning virtual machines...
echo Virtual machines provisioned successfully.
pause
goto infrastructure_as_a_service

:manage_storage
cls
echo Managing storage...
echo Storage managed successfully.
pause
goto infrastructure_as_a_service

:configure_networking
cls
echo Configuring networking...
echo Networking configured successfully.
pause
goto infrastructure_as_a_service

:deploy_application
cls
echo Deploying application...
echo Application deployed successfully.
pause
goto platform_as_a_service

:scale_resources
cls
echo Scaling resources...
echo Resources scaled successfully.
pause
goto platform_as_a_service

:monitor_performance
cls
echo Monitoring performance...
echo Performance monitored successfully.
pause
goto platform_as_a_service

:exit
cls
echo Thank you for using the USAF - Krados Carrier Management System. Fly safe!
pause
exit
:main_menu
cls
echo ==================================================
echo               Welcome to USAF - Krados
echo             Carrier Management System
echo ==================================================
echo 1. Login
echo 2. Exit
echo ==================================================
set /p choice="Please choose an option (1-2): "

if "%choice%"=="1" goto login
if "%choice%"=="2" goto exit
goto main_menu

:login
cls
set /p user="Enter Pilot Name: "
set /p pass="Enter Password: "
echo Authenticating...
:: Simulating a database check for username and password
if "%user%"=="pilot" if "%pass%"=="evepassword" (
    echo Authentication successful!
    pause
    goto carrier_menu
) else (
    echo Invalid username or password. Please try again.
    pause
    goto main_menu
)

:carrier_menu
cls
echo ==================================================
echo               Krados Carrier Control Panel
echo ==================================================
echo 1. Check Cargo
echo 2. Load Cargo
echo 3. Unload Cargo
echo 4. Engine Management
echo 5. Drone Management
echo 6. Navigation Management
echo 7. Cloud Computing
echo 8. Platform as a Service
echo 9. Log Out
echo ==================================================
set /p carrier_choice="Please choose an option (1-9): "

if "%carrier_choice%"=="1" goto check_cargo
if "%carrier_choice%"=="2" goto load_cargo
if "%carrier_choice%"=="3" goto unload_cargo
if "%carrier_choice%"=="4" goto engine_management
if "%carrier_choice%"=="5" goto drone_management
if "%carrier_choice%"=="6" goto navigation_management
if "%carrier_choice%"=="7" goto cloud_computing
if "%carrier_choice%"=="8" goto platform_as_a_service
if "%carrier_choice%"=="9" goto main_menu
goto carrier_menu

:check_cargo
cls
echo Current cargo: %cargo% units
pause
goto carrier_menu

:load_cargo
cls
set /p cargo_type="Enter cargo type: "
if /i "%cargo_type%"=="hazardous" (
    echo Loading hazardous materials is not allowed.
    pause
) else if /i "%cargo_type%"=="explosives" (
    echo Loading explosives is not allowed.
    pause
) else if /i "%cargo_type%"=="ammo" (
    echo Loading ammunition is not allowed.
    pause
) else if /i "%cargo_type%"=="firearms" (
    echo Loading firearms is not allowed.
    pause
) else (
    set /a cargo+=1
    echo Loading cargo...
    echo Cargo loaded. Current cargo: %cargo% units
    pause
)
goto carrier_menu

:unload_cargo
cls
if %cargo% LEQ 0 (
    echo No cargo to unload.
) else (
    set /a cargo-=1
    echo Unloading cargo...
    echo Cargo unloaded. Current cargo: %cargo% units
)
pause
goto carrier_menu

:engine_management
cls
echo ==================================================
echo                Engine Management
echo ==================================================
echo 1. Check Fuel Level
echo 2. Refuel
echo 3. Start Engine
echo 4. Stop Engine
echo 5. Back to Main Menu
echo ==================================================
set /p engine_choice="Please choose an option (1-5): "

if "%engine_choice%"=="1" goto check_fuel
if "%engine_choice%"=="2" goto refuel
if "%engine_choice%"=="3" goto start_engine
if "%engine_choice%"=="4" goto stop_engine
if "%engine_choice%"=="5" goto carrier_menu
goto engine_management

:check_fuel
cls
echo Current fuel level: %fuel% units
pause
goto engine_management

:refuel
cls
set /a fuel=100
echo Refueling...
echo Fuel tank is now full. Current fuel level: %fuel% units
pause
goto engine_management

:start_engine
cls
if "%engine_status%"=="on" (
    echo Engine is already running.
) else (
    if %fuel% LEQ 0 (
        echo Insufficient fuel to start the engine.
    ) else (
        set engine_status=on
        echo Starting engines...
        echo Engines started. Current fuel level: %fuel% units
    )
)
pause
goto engine_management

:stop_engine
cls
if "%engine_status%"=="off" (
    echo Engine is already stopped.
) else (
    set engine_status=off
    echo Stopping engine...
    echo Engine stopped.
)
pause
goto engine_management

:drone_management
cls
echo ==================================================
echo                Drone Management
echo ==================================================
echo 1. Check Drone Status
echo 2. Launch Drones
echo 3. Dock Drones
echo 4. Back to Main Menu
echo ==================================================
set /p drone_choice="Please choose an option (1-4): "

if "%drone_choice%"=="1" goto check_drone_status
if "%drone_choice%"=="2" goto launch_drones
if "%drone_choice%"=="3" goto dock_drones
if "%drone_choice%"=="4" goto carrier_menu
goto drone_management

:check_drone_status
cls
echo Current drone status: %drone_status%
echo Number of drones: %drone_count%
pause
goto drone_management

:launch_drones
cls
if "%drone_status%"=="launched" (
    echo Drones are already launched.
) else (
    set drone_status=launched
    echo Launching drones...
    echo Drones launched. Number of drones: %drone_count%
)
pause
goto drone_management

:dock_drones
cls
if "%drone_status%"=="docked" (
    echo Drones are already docked.
) else (
    set drone_status=docked
    echo Docking drones...
    echo Drones docked. Number of drones: %drone_count%
)
pause
goto drone_management

:navigation_management
cls
echo ==================================================
echo            Navigation Management
echo ==================================================
echo 1. Enable Navigation
echo 2. Disable Navigation
echo 3. Back to Main Menu
echo ==================================================
set /p navigation_choice="Please choose an option (1-3): "

if "%navigation_choice%"=="1" goto enable_navigation
if "%navigation_choice%"=="2" goto disable_navigation
if "%navigation_choice%"=="3" goto carrier_menu
goto navigation_management

:enable_navigation
cls
if "%navigation_status%"=="enabled" (
    echo Navigation is already enabled.
) else (
    set navigation_status=enabled
    echo Navigation enabled.
)
pause
goto navigation_management

:disable_navigation
cls
if "%navigation_status%"=="disabled" (
    echo Navigation is already disabled.
) else (
    set navigation_status=disabled
    echo Navigation disabled.
)
pause
goto navigation_management

:cloud_computing
cls
echo ==================================================
echo            Cloud Computing
echo ==================================================
echo 1. Deploy Application
echo 2. Scale Resources
echo 3. Monitor Performance
echo 4. Back to Main Menu
echo ==================================================
set /p cloud_choice="Please choose an option (1-4): "

if "%cloud_choice%"=="1" goto deploy_application
if "%cloud_choice%"=="2" goto scale_resources
if "%cloud_choice%"=="3" goto monitor_performance
if "%cloud_choice%"=="4" goto carrier_menu
goto cloud_computing

:platform_as_a_service
cls
echo ==================================================
echo         Platform as a Service
echo ==================================================
echo 1. Deploy Application
echo 2. Scale Resources
echo 3. Monitor Performance
echo 4. Back to Main Menu
echo ==================================================
set /p platform_choice="Please choose an option (1-4): "

if "%platform_choice%"=="1" goto deploy_application
if "%platform_choice%"=="2" goto scale_resources
if "%platform_choice%"=="3" goto monitor_performance
if "%platform_choice%"=="4" goto carrier_menu
goto platform_as_a_service

:deploy_application
cls
echo Deploying application...
echo Application deployed successfully.
pause
goto platform_as_a_service

:scale_resources
cls
echo Scaling resources...
echo Resources scaled successfully.
pause
goto platform_as_a_service

:monitor_performance
cls
echo Monitoring performance...
echo Performance monitored successfully.
pause
goto platform_as_a_service

:exit
cls
echo Thank you for using the USAF - Krados Carrier Management System. Fly safe!
pause
exit
cls
set /p user="Enter Pilot Name: "
set /p pass="Enter Password: "
@echo off
title USAF - Krados Carrier Management System
color 1F

:: Initialize variables
set cargo=0
set fuel=100
set engine_status=off
set drone_count=10
set drone_status=docked
set navigation_status=disabled

:main_menu
cls
echo ==================================================
echo               Welcome to USAF - Krados
echo             Carrier Management System
echo ==================================================
echo 1. Login
echo 2. Exit
echo ==================================================
set /p choice="Please choose an option (1-2): "

if "%choice%"=="1" goto login
if "%choice%"=="2" goto exit
goto main_menu

:login
cls
set /p user="Enter Pilot Name: "
set /p pass="Enter Password: "
echo Authenticating...
:: Simulating a database check for username and password
if "%user%"=="pilot" if "%pass%"=="evepassword" (
    echo Authentication successful!
    pause
    goto carrier_menu
) else (
    echo Invalid username or password. Please try again.
    pause
    goto main_menu
)

:carrier_menu
cls
echo ==================================================
echo               Krados Carrier Control Panel
echo ==================================================
echo 1. Check Cargo
echo 2. Load Cargo
echo 3. Unload Cargo
echo 4. Engine Management
echo 5. Drone Management
echo 6. Navigation Management
echo 7. Cloud Computing
echo 8. Log Out
echo ==================================================
set /p carrier_choice="Please choose an option (1-8): "

if "%carrier_choice%"=="1" goto check_cargo
if "%carrier_choice%"=="2" goto load_cargo
if "%carrier_choice%"=="3" goto unload_cargo
if "%carrier_choice%"=="4" goto engine_management
if "%carrier_choice%"=="5" goto drone_management
if "%carrier_choice%"=="6" goto navigation_management
if "%carrier_choice%"=="7" goto cloud_computing
if "%carrier_choice%"=="8" goto main_menu
goto carrier_menu

:check_cargo
cls
echo Current cargo: %cargo% units
pause
goto carrier_menu

:load_cargo
cls
set /p cargo_type="Enter cargo type: "
if /i "%cargo_type%"=="hazardous" (
    echo Loading hazardous materials is not allowed.
    pause
) else if /i "%cargo_type%"=="explosives" (
    echo Loading explosives is not allowed.
    pause
) else if /i "%cargo_type%"=="ammo" (
    echo Loading ammunition is not allowed.
    pause
) else if /i "%cargo_type%"=="firearms" (
    echo Loading firearms is not allowed.
    pause
) else (
    set /a cargo+=1
    echo Loading cargo...
    echo Cargo loaded. Current cargo: %cargo% units
    pause
)
goto carrier_menu

:unload_cargo
cls
if %cargo% LEQ 0 (
    echo No cargo to unload.
) else (
    set /a cargo-=1
    echo Unloading cargo...
    echo Cargo unloaded. Current cargo: %cargo% units
)
pause
goto carrier_menu

:engine_management
cls
echo ==================================================
echo                Engine Management
echo ==================================================
echo 1. Check Fuel Level
echo 2. Refuel
echo 3. Start Engine
echo 4. Stop Engine
echo 5. Back to Main Menu
echo ==================================================
set /p engine_choice="Please choose an option (1-5): "

if "%engine_choice%"=="1" goto check_fuel
if "%engine_choice%"=="2" goto refuel
if "%engine_choice%"=="3" goto start_engine
if "%engine_choice%"=="4" goto stop_engine
if "%engine_choice%"=="5" goto carrier_menu
goto engine_management

:check_fuel
cls
echo Current fuel level: %fuel% units
pause
goto engine_management

:refuel
cls
set /a fuel=100
echo Refueling...
echo Fuel tank is now full. Current fuel level: %fuel% units
pause
goto engine_management

:start_engine
cls
if "%engine_status%"=="on" (
    echo Engine is already running.
) else (
    if %fuel% LEQ 0 (
        echo Insufficient fuel to start the engine.
    ) else (
        set engine_status=on
        echo Starting engines...
        echo Engines started. Current fuel level: %fuel% units
    )
)
pause
goto engine_management

:stop_engine
cls
if "%engine_status%"=="off" (
    echo Engine is already stopped.
) else (
    set engine_status=off
    echo Stopping engine...
    echo Engine stopped.
)
pause
goto engine_management

:drone_management
cls
echo ==================================================
echo                Drone Management
echo ==================================================
echo 1. Check Drone Status
echo 2. Launch Drones
echo 3. Dock Drones
echo 4. Back to Main Menu
echo ==================================================
set /p drone_choice="Please choose an option (1-4): "

if "%drone_choice%"=="1" goto check_drone_status
if "%drone_choice%"=="2" goto launch_drones
if "%drone_choice%"=="3" goto dock_drones
if "%drone_choice%"=="4" goto carrier_menu
goto drone_management

:check_drone_status
cls
echo Current drone status: %drone_status%
echo Number of drones: %drone_count%
pause
goto drone_management

:launch_drones
cls
if "%drone_status%"=="launched" (
    echo Drones are already launched.
) else (
    set drone_status=launched
    echo Launching drones...
    echo Drones launched. Number of drones: %drone_count%
)
pause
goto drone_management

:dock_drones
cls
if "%drone_status%"=="docked" (
    echo Drones are already docked.
) else (
    set drone_status=docked
    echo Docking drones...
    echo Drones docked. Number of drones: %drone_count%
)
pause
goto drone_management

:navigation_management
cls
echo ==================================================
echo            Navigation Management
echo ==================================================
echo 1. Enable Navigation
echo 2. Disable Navigation
echo 3. Back to Main Menu
echo ==================================================
set /p navigation_choice="Please choose an option (1-3): "

if "%navigation_choice%"=="1" goto enable_navigation
if "%navigation_choice%"=="2" goto disable_navigation
if "%navigation_choice%"=="3" goto carrier_menu
goto navigation_management

:enable_navigation
cls
if "%navigation_status%"=="enabled" (
    echo Navigation is already enabled.
) else (
    set navigation_status=enabled
    echo Navigation enabled.
)
pause
goto navigation_management

:disable_navigation
cls
if "%navigation_status%"=="disabled" (
    echo Navigation is already disabled.
) else (
    set navigation_status=disabled
    echo Navigation disabled.
)
pause
goto navigation_management

:cloud_computing
cls
echo ==================================================
echo            Cloud Computing
echo ==================================================
echo 1. Deploy Application
echo 2. Scale Resources
echo 3. Monitor Performance
echo 4. Back to Main Menu
echo ==================================================
set /p cloud_choice="Please choose an option (1-4): "

if "%cloud_choice%"=="1" goto deploy_application
if "%cloud_choice%"=="2" goto scale_resources
if "%cloud_choice%"=="3" goto monitor_performance
if "%cloud_choice%"=="4" goto carrier_menu
goto cloud_computing

:deploy_application
cls
echo Deploying application...
echo Application deployed successfully.
pause
goto cloud_computing

:scale_resources
cls
echo Scaling resources...
echo Resources scaled successfully.
pause
goto cloud_computing

:monitor_performance
cls
echo Monitoring performance...
echo Performance monitored successfully.
pause
goto cloud_computing

:exit
cls
echo Thank you for using the USAF - Krados Carrier Management System. Fly safe!
pause
exit
echo Authenticating...
:: Simulating a database check for username and password
if "%user%"=="pilot" if "%pass%"=="evepassword" (
    echo Authentication successful!
    pause
    goto carrier_menu
) else (
    echo Invalid username or password. Please try again.
    pause
    goto main_menu
)

:carrier_menu
cls
echo ==================================================
echo               Krados Carrier Control Panel
echo ==================================================
echo 1. Check Cargo
echo 2. Load Cargo
echo 3. Unload Cargo
echo 4. Engine Management
echo 5. Drone Management
echo 6. Navigation Management
echo 7. Log Out
echo ==================================================
set /p carrier_choice="Please choose an option (1-7): "

if "%carrier_choice%"=="1" goto check_cargo
if "%carrier_choice%"=="2" goto load_cargo
if "%carrier_choice%"=="3" goto unload_cargo
if "%carrier_choice%"=="4" goto engine_management
if "%carrier_choice%"=="5" goto drone_management
if "%carrier_choice%"=="6" goto navigation_management
if "%carrier_choice%"=="7" goto main_menu
goto carrier_menu

:check_cargo
cls
echo Current cargo: %cargo% units
pause
goto carrier_menu

:load_cargo
cls
set /p cargo_type="Enter cargo type: "
if /i "%cargo_type%"=="hazardous" (
    echo Loading hazardous materials is not allowed.
    pause
) else if /i "%cargo_type%"=="explosives" (
    echo Loading explosives is not allowed.
    pause
) else if /i "%cargo_type%"=="ammo" (
    echo Loading ammunition is not allowed.
    pause
) else if /i "%cargo_type%"=="firearms" (
    echo Loading firearms is not allowed.
    pause
) else (
    set /a cargo+=1
    echo Loading cargo...
    echo Cargo loaded. Current cargo: %cargo% units
    pause
)
goto carrier_menu

:unload_cargo
cls
if %cargo% LEQ 0 (
    echo No cargo to unload.
) else (
    set /a cargo-=1
    echo Unloading cargo...
    echo Cargo unloaded. Current cargo: %cargo% units
)
pause
goto carrier_menu

:engine_management
cls
echo ==================================================
echo                Engine Management
echo ==================================================
echo 1. Check Fuel Level
echo 2. Refuel
echo 3. Start Engine
echo 4. Stop Engine
echo 5. Back to Main Menu
echo ==================================================
set /p engine_choice="Please choose an option (1-5): "

if "%engine_choice%"=="1" goto check_fuel
if "%engine_choice%"=="2" goto refuel
if "%engine_choice%"=="3" goto start_engine
if "%engine_choice%"=="4" goto stop_engine
if "%engine_choice%"=="5" goto carrier_menu
goto engine_management

:check_fuel
cls
echo Current fuel level: %fuel% units
pause
goto engine_management

:refuel
cls
set /a fuel=100
echo Refueling...
echo Fuel tank is now full. Current fuel level: %fuel% units
pause
goto engine_management

:start_engine
cls
if "%engine_status%"=="on" (
    echo Engine is already running.
) else (
    if %fuel% LEQ 0 (
        echo Insufficient fuel to start the engine.
    ) else (
        set engine_status=on
        echo Starting engines...
        echo Engines started. Current fuel level: %fuel% units
    )
)
pause
goto engine_management

:stop_engine
cls
if "%engine_status%"=="off" (
    echo Engine is already stopped.
) else (
    set engine_status=off
    echo Stopping engine...
    echo Engine stopped.
)
pause
goto engine_management

:drone_management
cls
echo ==================================================
echo                Drone Management
echo ==================================================
echo 1. Check Drone Status
echo 2. Launch Drones
echo 3. Dock Drones
echo 4. Back to Main Menu
echo ==================================================
set /p drone_choice="Please choose an option (1-4): "

if "%drone_choice%"=="1" goto check_drone_status
if "%drone_choice%"=="2" goto launch_drones
if "%drone_choice%"=="3" goto dock_drones
if "%drone_choice%"=="4" goto carrier_menu
goto drone_management

:check_drone_status
cls
echo Current drone status: %drone_status%
echo Number of drones: %drone_count%
pause
goto drone_management

:launch_drones
cls
if "%drone_status%"=="launched" (
    echo Drones are already launched.
) else (
    set drone_status=launched
    echo Launching drones...
    echo Drones launched. Number of drones: %drone_count%
)
pause
goto drone_management

:dock_drones
cls
if "%drone_status%"=="docked" (
    echo Drones are already docked.
) else (
    set drone_status=docked
    echo Docking drones...
    echo Drones docked. Number of drones: %drone_count%
)
pause
goto drone_management

:navigation_management
cls
echo ==================================================
echo            Navigation Management
echo ==================================================
echo 1. Enable Navigation
echo 2. Disable Navigation
echo 3. Back to Main Menu
echo ==================================================
set /p navigation_choice="Please choose an option (1-3): "

if "%navigation_choice%"=="1" goto enable_navigation
if "%navigation_choice%"=="2" goto disable_navigation
if "%navigation_choice%"=="3" goto carrier_menu
goto navigation_management

:enable_navigation
cls
if "%navigation_status%"=="enabled" (
    echo Navigation is already enabled.
) else (
    set navigation_status=enabled
    echo Navigation enabled.
)
pause
goto navigation_management

:disable_navigation
cls
if "%navigation_status%"=="disabled" (
    echo Navigation is already disabled.
) else (
    set navigation_status=disabled
    echo Navigation disabled.
)
pause
goto navigation_management

:exit
cls
echo Thank you for using the USAF - Krados Carrier Management System. Fly safe!
pause
exit
