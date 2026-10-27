.class public Lcom/android/server/devicepolicy/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# static fields
.field public static final ADDITIONAL_AFFILIATED_PROFILE_OWNER_ON_USER_PERMISSIONS:Ljava/util/List;

.field public static final ADDITIONAL_PROFILE_OWNER_OF_ORGANIZATION_OWNED_DEVICE_PERMISSIONS:Ljava/util/List;

.field public static final ADDITIONAL_PROFILE_OWNER_ON_USER_0_PERMISSIONS:Ljava/util/List;

.field public static final ADDITIONAL_PROFILE_OWNER_ON_USER_PERMISSIONS:Ljava/util/List;

.field public static final AFFILIATED_PROFILE_OWNER_ON_USER_PERMISSIONS:Ljava/util/List;

.field public static final CROSS_USER_PERMISSIONS:Ljava/util/HashMap;

.field public static final DEFAULT_DEVICE_OWNER_PERMISSIONS:Ljava/util/List;

.field public static final DELEGATE_SCOPES:Ljava/util/HashMap;

.field public static final DPC_PERMISSIONS:Ljava/util/HashMap;

.field public static final FINANCED_DEVICE_OWNER_PERMISSIONS:Ljava/util/List;

.field public static final PROFILE_OWNER_OF_ORGANIZATION_OWNED_DEVICE_PERMISSIONS:Ljava/util/List;

.field public static final PROFILE_OWNER_ON_USER_0_PERMISSIONS:Ljava/util/List;

.field public static final PROFILE_OWNER_ON_USER_PERMISSIONS:Ljava/util/List;

.field public static final PROFILE_OWNER_PERMISSIONS:Ljava/util/List;

.field public static final USER_RESTRICTION_PERMISSIONS:Ljava/util/HashMap;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDelegate:Lcom/android/server/devicepolicy/PermissionChecker$Delegate;


# direct methods
.method static constructor <clinit>()V
    .registers 81

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/PermissionChecker;->DELEGATE_SCOPES:Ljava/util/HashMap;

    .line 141
    const-string v1, "delegation-app-restrictions"

    const-string v2, "android.permission.MANAGE_DEVICE_POLICY_APP_RESTRICTIONS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "delegation-block-uninstall"

    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_BLOCK_UNINSTALL"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_CERTIFICATES"

    const-string v4, "delegation-cert-install"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "delegation-package-access"

    const-string v4, "android.permission.MANAGE_DEVICE_POLICY_PACKAGE_STATE"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "delegation-permission-grant"

    const-string v5, "android.permission.MANAGE_DEVICE_POLICY_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_SECURITY_LOGGING"

    const-string v6, "delegation-security-logging"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/PermissionChecker;->CROSS_USER_PERMISSIONS:Ljava/util/HashMap;

    .line 153
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_FACTORY_RESET"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_MTE"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_SECURITY_LOGGING"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_STATUS_BAR"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_UPDATES"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_USB_DATA_SIGNALLING"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "android.permission.SET_TIME"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "android.permission.SET_TIME_ZONE"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_INSTALL_UNKNOWN_SOURCES"

    const-string v7, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_SECURITY_CRITICAL"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v8, "android.permission.MANAGE_DEVICE_POLICY_KEYGUARD"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v8, "android.permission.MANAGE_DEVICE_POLICY_LOCK_CREDENTIALS"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v7, "android.permission.MANAGE_DEVICE_POLICY_ACCOUNT_MANAGEMENT"

    const-string v9, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS"

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v7, "android.permission.MANAGE_DEVICE_POLICY_AIRPLANE_MODE"

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v7, "android.permission.MANAGE_DEVICE_POLICY_BLUETOOTH"

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v10, "android.permission.MANAGE_DEVICE_POLICY_CALLS"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v10, "android.permission.MANAGE_DEVICE_POLICY_CAMERA"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v10, "android.permission.MANAGE_DEVICE_POLICY_DEFAULT_SMS"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v10, "android.permission.MANAGE_DEVICE_POLICY_INPUT_METHODS"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v10, "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v10, "android.permission.MANAGE_DEVICE_POLICY_MOBILE_NETWORK"

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v11, "android.permission.MANAGE_DEVICE_POLICY_NEARBY_COMMUNICATION"

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v12, "android.permission.MANAGE_DEVICE_POLICY_PHYSICAL_MEDIA"

    invoke-virtual {v0, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v4, "android.permission.MANAGE_DEVICE_POLICY_RESTRICT_PRIVATE_DNS"

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v4, "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CAPTURE"

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v4, "android.permission.MANAGE_DEVICE_POLICY_SMS"

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v4, "android.permission.MANAGE_DEVICE_POLICY_SAFE_BOOT"

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v4, "android.permission.MANAGE_DEVICE_POLICY_TIME"

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v4, "android.permission.MANAGE_DEVICE_POLICY_USB_FILE_TRANSFER"

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v4, "android.permission.MANAGE_DEVICE_POLICY_WIFI"

    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v12, "android.permission.MANAGE_DEVICE_POLICY_WIPE_DATA"

    invoke-virtual {v0, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v12, "android.permission.MANAGE_DEVICE_POLICY_CONTENT_PROTECTION"

    invoke-virtual {v0, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v12, "android.permission.MANAGE_DEVICE_POLICY_APP_FUNCTIONS"

    invoke-virtual {v0, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v9, "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL"

    const-string v12, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_FULL"

    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v2, "android.permission.MANAGE_DEVICE_POLICY_AUDIO_OUTPUT"

    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v13, "android.permission.MANAGE_DEVICE_POLICY_AUTOFILL"

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_CAMERA_TOGGLE"

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_COMMON_CRITERIA_MODE"

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_DEBUGGING_FEATURES"

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v3, "android.permission.MANAGE_DEVICE_POLICY_DISPLAY"

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v13, "android.permission.MANAGE_DEVICE_POLICY_FUN"

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v13, "android.permission.MANAGE_DEVICE_POLICY_LOCALE"

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v13, "android.permission.MANAGE_DEVICE_POLICY_LOCATION"

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v14, "android.permission.MANAGE_DEVICE_POLICY_LOCK"

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v14, "android.permission.MANAGE_DEVICE_POLICY_LOCK_TASK"

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v14, "android.permission.MANAGE_DEVICE_POLICY_MODIFY_USERS"

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v15, "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE_TOGGLE"

    invoke-virtual {v0, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v15, "android.permission.MANAGE_DEVICE_POLICY_ORGANIZATION_IDENTITY"

    invoke-virtual {v0, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v15, "android.permission.MANAGE_DEVICE_POLICY_PROFILES"

    invoke-virtual {v0, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v6, "android.permission.MANAGE_DEVICE_POLICY_PROFILE_INTERACTION"

    invoke-virtual {v0, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v1

    .line 260
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_PRINTING"

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_RESET_PASSWORD"

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CONTENT"

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v5, "android.permission.MANAGE_DEVICE_POLICY_SUPPORT_MESSAGE"

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v5, "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v5, "android.permission.MANAGE_DEVICE_POLICY_VPN"

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v5, "android.permission.MANAGE_DEVICE_POLICY_WALLPAPER"

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v5, "android.permission.MANAGE_DEVICE_POLICY_WINDOWS"

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v79, "android.permission.SET_TIME_ZONE"

    const-string v80, "android.permission.MANAGE_DEVICE_POLICY_QUERY_SYSTEM_UPDATES"

    const-string v17, "android.permission.MANAGE_DEVICE_POLICY_ACCOUNT_MANAGEMENT"

    const-string v18, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS"

    const-string v19, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_FULL"

    const-string v20, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_SECURITY_CRITICAL"

    const-string v21, "android.permission.MANAGE_DEVICE_POLICY_AIRPLANE_MODE"

    const-string v22, "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL"

    const-string v23, "android.permission.MANAGE_DEVICE_POLICY_APP_FUNCTIONS"

    const-string v24, "android.permission.MANAGE_DEVICE_POLICY_APP_RESTRICTIONS"

    const-string v25, "android.permission.MANAGE_DEVICE_POLICY_AUDIO_OUTPUT"

    const-string v26, "android.permission.MANAGE_DEVICE_POLICY_AUTOFILL"

    const-string v27, "android.permission.MANAGE_DEVICE_POLICY_BLUETOOTH"

    const-string v28, "android.permission.MANAGE_DEVICE_POLICY_CALLS"

    const-string v29, "android.permission.MANAGE_DEVICE_POLICY_CAMERA"

    const-string v30, "android.permission.MANAGE_DEVICE_POLICY_CERTIFICATES"

    const-string v31, "android.permission.MANAGE_DEVICE_POLICY_COMMON_CRITERIA_MODE"

    const-string v32, "android.permission.MANAGE_DEVICE_POLICY_CONTENT_PROTECTION"

    const-string v33, "android.permission.MANAGE_DEVICE_POLICY_DEBUGGING_FEATURES"

    const-string v34, "android.permission.MANAGE_DEVICE_POLICY_DEFAULT_SMS"

    const-string v35, "android.permission.MANAGE_DEVICE_POLICY_DISPLAY"

    const-string v36, "android.permission.MANAGE_DEVICE_POLICY_FACTORY_RESET"

    const-string v37, "android.permission.MANAGE_DEVICE_POLICY_FUN"

    const-string v38, "android.permission.MANAGE_DEVICE_POLICY_INPUT_METHODS"

    const-string v39, "android.permission.MANAGE_DEVICE_POLICY_INSTALL_UNKNOWN_SOURCES"

    const-string v40, "android.permission.MANAGE_DEVICE_POLICY_KEYGUARD"

    const-string v41, "android.permission.MANAGE_DEVICE_POLICY_LOCALE"

    const-string v42, "android.permission.MANAGE_DEVICE_POLICY_LOCATION"

    const-string v43, "android.permission.MANAGE_DEVICE_POLICY_LOCK"

    const-string v44, "android.permission.MANAGE_DEVICE_POLICY_LOCK_CREDENTIALS"

    const-string v45, "android.permission.MANAGE_DEVICE_POLICY_LOCK_TASK"

    const-string v46, "android.permission.MANAGE_DEVICE_POLICY_MANAGED_SUBSCRIPTIONS"

    const-string v47, "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE"

    const-string v48, "android.permission.MANAGE_DEVICE_POLICY_MOBILE_NETWORK"

    const-string v49, "android.permission.MANAGE_DEVICE_POLICY_MODIFY_USERS"

    const-string v50, "android.permission.MANAGE_DEVICE_POLICY_MTE"

    const-string v51, "android.permission.MANAGE_DEVICE_POLICY_NEARBY_COMMUNICATION"

    const-string v52, "android.permission.MANAGE_DEVICE_POLICY_ORGANIZATION_IDENTITY"

    const-string v53, "android.permission.MANAGE_DEVICE_POLICY_PACKAGE_STATE"

    const-string v54, "android.permission.MANAGE_DEVICE_POLICY_PHYSICAL_MEDIA"

    const-string v55, "android.permission.MANAGE_DEVICE_POLICY_PRINTING"

    const-string v56, "android.permission.MANAGE_DEVICE_POLICY_PROFILES"

    const-string v57, "android.permission.MANAGE_DEVICE_POLICY_PROFILE_INTERACTION"

    const-string v58, "android.permission.MANAGE_DEVICE_POLICY_RESET_PASSWORD"

    const-string v59, "android.permission.MANAGE_DEVICE_POLICY_RESTRICT_PRIVATE_DNS"

    const-string v60, "android.permission.MANAGE_DEVICE_POLICY_RUNTIME_PERMISSIONS"

    const-string v61, "android.permission.MANAGE_DEVICE_POLICY_SAFE_BOOT"

    const-string v62, "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CAPTURE"

    const-string v63, "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CONTENT"

    const-string v64, "android.permission.MANAGE_DEVICE_POLICY_SECURITY_LOGGING"

    const-string v65, "android.permission.MANAGE_DEVICE_POLICY_SMS"

    const-string v66, "android.permission.MANAGE_DEVICE_POLICY_STATUS_BAR"

    const-string v67, "android.permission.MANAGE_DEVICE_POLICY_SUPPORT_MESSAGE"

    const-string v68, "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_DIALOGS"

    const-string v69, "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_UPDATES"

    const-string v70, "android.permission.MANAGE_DEVICE_POLICY_TIME"

    const-string v71, "android.permission.MANAGE_DEVICE_POLICY_USB_DATA_SIGNALLING"

    const-string v72, "android.permission.MANAGE_DEVICE_POLICY_USB_FILE_TRANSFER"

    const-string v73, "android.permission.MANAGE_DEVICE_POLICY_VPN"

    const-string v74, "android.permission.MANAGE_DEVICE_POLICY_WALLPAPER"

    const-string v75, "android.permission.MANAGE_DEVICE_POLICY_WIFI"

    const-string v76, "android.permission.MANAGE_DEVICE_POLICY_WINDOWS"

    const-string v77, "android.permission.MANAGE_DEVICE_POLICY_WIPE_DATA"

    const-string v78, "android.permission.SET_TIME"

    filled-new-array/range {v17 .. v80}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/PermissionChecker;->DEFAULT_DEVICE_OWNER_PERMISSIONS:Ljava/util/List;

    .line 315
    const-string v33, "android.permission.MANAGE_DEVICE_POLICY_TIME"

    const-string v34, "android.permission.MANAGE_DEVICE_POLICY_WIPE_DATA"

    const-string v17, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS"

    const-string v18, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_FULL"

    const-string v19, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_SECURITY_CRITICAL"

    const-string v20, "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL"

    const-string v21, "android.permission.MANAGE_DEVICE_POLICY_CALLS"

    const-string v22, "android.permission.MANAGE_DEVICE_POLICY_DEBUGGING_FEATURES"

    const-string v23, "android.permission.MANAGE_DEVICE_POLICY_FACTORY_RESET"

    const-string v24, "android.permission.MANAGE_DEVICE_POLICY_INSTALL_UNKNOWN_SOURCES"

    const-string v25, "android.permission.MANAGE_DEVICE_POLICY_KEYGUARD"

    const-string v26, "android.permission.MANAGE_DEVICE_POLICY_LOCK_CREDENTIALS"

    const-string v27, "android.permission.MANAGE_DEVICE_POLICY_LOCK_TASK"

    const-string v28, "android.permission.MANAGE_DEVICE_POLICY_MODIFY_USERS"

    const-string v29, "android.permission.MANAGE_DEVICE_POLICY_ORGANIZATION_IDENTITY"

    const-string v30, "android.permission.MANAGE_DEVICE_POLICY_RUNTIME_PERMISSIONS"

    const-string v31, "android.permission.MANAGE_DEVICE_POLICY_SAFE_BOOT"

    const-string v32, "android.permission.MANAGE_DEVICE_POLICY_SUPPORT_MESSAGE"

    filled-new-array/range {v17 .. v34}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/android/server/devicepolicy/PermissionChecker;->FINANCED_DEVICE_OWNER_PERMISSIONS:Ljava/util/List;

    .line 329
    const-string v54, "android.permission.MANAGE_DEVICE_POLICY_WIPE_DATA"

    const-string v55, "android.permission.MANAGE_DEVICE_POLICY_QUERY_SYSTEM_UPDATES"

    const-string v17, "android.permission.MANAGE_DEVICE_POLICY_ACCOUNT_MANAGEMENT"

    const-string v18, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_SECURITY_CRITICAL"

    const-string v19, "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL"

    const-string v20, "android.permission.MANAGE_DEVICE_POLICY_APP_FUNCTIONS"

    const-string v21, "android.permission.MANAGE_DEVICE_POLICY_APP_RESTRICTIONS"

    const-string v22, "android.permission.MANAGE_DEVICE_POLICY_AUDIO_OUTPUT"

    const-string v23, "android.permission.MANAGE_DEVICE_POLICY_AUTOFILL"

    const-string v24, "android.permission.MANAGE_DEVICE_POLICY_BLUETOOTH"

    const-string v25, "android.permission.MANAGE_DEVICE_POLICY_CALLS"

    const-string v26, "android.permission.MANAGE_DEVICE_POLICY_CAMERA"

    const-string v27, "android.permission.MANAGE_DEVICE_POLICY_CERTIFICATES"

    const-string v28, "android.permission.MANAGE_DEVICE_POLICY_CONTENT_PROTECTION"

    const-string v29, "android.permission.MANAGE_DEVICE_POLICY_DEBUGGING_FEATURES"

    const-string v30, "android.permission.MANAGE_DEVICE_POLICY_DISPLAY"

    const-string v31, "android.permission.MANAGE_DEVICE_POLICY_FACTORY_RESET"

    const-string v32, "android.permission.MANAGE_DEVICE_POLICY_INPUT_METHODS"

    const-string v33, "android.permission.MANAGE_DEVICE_POLICY_INSTALL_UNKNOWN_SOURCES"

    const-string v34, "android.permission.MANAGE_DEVICE_POLICY_KEYGUARD"

    const-string v35, "android.permission.MANAGE_DEVICE_POLICY_LOCALE"

    const-string v36, "android.permission.MANAGE_DEVICE_POLICY_LOCATION"

    const-string v37, "android.permission.MANAGE_DEVICE_POLICY_LOCK"

    const-string v38, "android.permission.MANAGE_DEVICE_POLICY_LOCK_CREDENTIALS"

    const-string v39, "android.permission.MANAGE_DEVICE_POLICY_MANAGED_SUBSCRIPTIONS"

    const-string v40, "android.permission.MANAGE_DEVICE_POLICY_NEARBY_COMMUNICATION"

    const-string v41, "android.permission.MANAGE_DEVICE_POLICY_ORGANIZATION_IDENTITY"

    const-string v42, "android.permission.MANAGE_DEVICE_POLICY_PACKAGE_STATE"

    const-string v43, "android.permission.MANAGE_DEVICE_POLICY_PRINTING"

    const-string v44, "android.permission.MANAGE_DEVICE_POLICY_PROFILES"

    const-string v45, "android.permission.MANAGE_DEVICE_POLICY_PROFILE_INTERACTION"

    const-string v46, "android.permission.MANAGE_DEVICE_POLICY_RESET_PASSWORD"

    const-string v47, "android.permission.MANAGE_DEVICE_POLICY_RUNTIME_PERMISSIONS"

    const-string v48, "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CAPTURE"

    const-string v49, "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CONTENT"

    const-string v50, "android.permission.MANAGE_DEVICE_POLICY_SUPPORT_MESSAGE"

    const-string v51, "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_DIALOGS"

    const-string v52, "android.permission.MANAGE_DEVICE_POLICY_TIME"

    const-string v53, "android.permission.MANAGE_DEVICE_POLICY_VPN"

    filled-new-array/range {v17 .. v55}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sput-object v12, Lcom/android/server/devicepolicy/PermissionChecker;->PROFILE_OWNER_PERMISSIONS:Ljava/util/List;

    .line 354
    const-string v36, "android.permission.SET_TIME"

    const-string v37, "android.permission.SET_TIME_ZONE"

    const-string v17, "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS"

    const-string v18, "android.permission.MANAGE_DEVICE_POLICY_AIRPLANE_MODE"

    const-string v19, "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL"

    const-string v20, "android.permission.MANAGE_DEVICE_POLICY_COMMON_CRITERIA_MODE"

    const-string v21, "android.permission.MANAGE_DEVICE_POLICY_DEFAULT_SMS"

    const-string v22, "android.permission.MANAGE_DEVICE_POLICY_LOCALE"

    const-string v23, "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE"

    const-string v24, "android.permission.MANAGE_DEVICE_POLICY_MOBILE_NETWORK"

    const-string v25, "android.permission.MANAGE_DEVICE_POLICY_MTE"

    const-string v26, "android.permission.MANAGE_DEVICE_POLICY_NEARBY_COMMUNICATION"

    const-string v27, "android.permission.MANAGE_DEVICE_POLICY_PHYSICAL_MEDIA"

    const-string v28, "android.permission.MANAGE_DEVICE_POLICY_RESTRICT_PRIVATE_DNS"

    const-string v29, "android.permission.MANAGE_DEVICE_POLICY_SAFE_BOOT"

    const-string v30, "android.permission.MANAGE_DEVICE_POLICY_SECURITY_LOGGING"

    const-string v31, "android.permission.MANAGE_DEVICE_POLICY_SMS"

    const-string v32, "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_UPDATES"

    const-string v33, "android.permission.MANAGE_DEVICE_POLICY_USB_DATA_SIGNALLING"

    const-string v34, "android.permission.MANAGE_DEVICE_POLICY_USB_FILE_TRANSFER"

    const-string v35, "android.permission.MANAGE_DEVICE_POLICY_WIFI"

    filled-new-array/range {v17 .. v37}, [Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v1

    invoke-static/range {v17 .. v17}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/devicepolicy/PermissionChecker;->ADDITIONAL_PROFILE_OWNER_OF_ORGANIZATION_OWNED_DEVICE_PERMISSIONS:Ljava/util/List;

    .line 369
    const-string v34, "android.permission.SET_TIME"

    const-string v35, "android.permission.SET_TIME_ZONE"

    const-string v19, "android.permission.MANAGE_DEVICE_POLICY_AIRPLANE_MODE"

    const-string v20, "android.permission.MANAGE_DEVICE_POLICY_DISPLAY"

    const-string v21, "android.permission.MANAGE_DEVICE_POLICY_FUN"

    const-string v22, "android.permission.MANAGE_DEVICE_POLICY_LOCK_TASK"

    const-string v23, "android.permission.MANAGE_DEVICE_POLICY_MOBILE_NETWORK"

    const-string v24, "android.permission.MANAGE_DEVICE_POLICY_MODIFY_USERS"

    const-string v25, "android.permission.MANAGE_DEVICE_POLICY_PHYSICAL_MEDIA"

    const-string v26, "android.permission.MANAGE_DEVICE_POLICY_PRINTING"

    const-string v27, "android.permission.MANAGE_DEVICE_POLICY_PROFILES"

    const-string v28, "android.permission.MANAGE_DEVICE_POLICY_PROFILE_INTERACTION"

    const-string v29, "android.permission.MANAGE_DEVICE_POLICY_SAFE_BOOT"

    const-string v30, "android.permission.MANAGE_DEVICE_POLICY_SMS"

    const-string v31, "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_DIALOGS"

    const-string v32, "android.permission.MANAGE_DEVICE_POLICY_USB_FILE_TRANSFER"

    const-string v33, "android.permission.MANAGE_DEVICE_POLICY_WINDOWS"

    filled-new-array/range {v19 .. v35}, [Ljava/lang/String;

    move-result-object v17

    move-object/from16 v19, v2

    invoke-static/range {v17 .. v17}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/server/devicepolicy/PermissionChecker;->ADDITIONAL_PROFILE_OWNER_ON_USER_0_PERMISSIONS:Ljava/util/List;

    .line 382
    const-string v17, "android.permission.MANAGE_DEVICE_POLICY_LOCK_TASK"

    move-object/from16 v20, v3

    invoke-static/range {v17 .. v17}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/server/devicepolicy/PermissionChecker;->ADDITIONAL_PROFILE_OWNER_ON_USER_PERMISSIONS:Ljava/util/List;

    .line 388
    const-string v17, "android.permission.MANAGE_DEVICE_POLICY_STATUS_BAR"

    move-object/from16 v21, v4

    .line 389
    invoke-static/range {v17 .. v17}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/android/server/devicepolicy/PermissionChecker;->ADDITIONAL_AFFILIATED_PROFILE_OWNER_ON_USER_PERMISSIONS:Ljava/util/List;

    move-object/from16 v17, v6

    .line 395
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/android/server/devicepolicy/PermissionChecker;->PROFILE_OWNER_OF_ORGANIZATION_OWNED_DEVICE_PERMISSIONS:Ljava/util/List;

    move-object/from16 v22, v7

    .line 402
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/android/server/devicepolicy/PermissionChecker;->PROFILE_OWNER_ON_USER_0_PERMISSIONS:Ljava/util/List;

    move-object/from16 v23, v8

    .line 408
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/android/server/devicepolicy/PermissionChecker;->AFFILIATED_PROFILE_OWNER_ON_USER_PERMISSIONS:Ljava/util/List;

    move-object/from16 v24, v9

    .line 415
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/android/server/devicepolicy/PermissionChecker;->PROFILE_OWNER_ON_USER_PERMISSIONS:Ljava/util/List;

    move-object/from16 v25, v10

    .line 417
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/android/server/devicepolicy/PermissionChecker;->DPC_PERMISSIONS:Ljava/util/HashMap;

    .line 422
    invoke-interface {v6, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    invoke-interface {v7, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 428
    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 431
    invoke-interface {v9, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 432
    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 435
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 436
    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 439
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 441
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 443
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 444
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 446
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/PermissionChecker;->USER_RESTRICTION_PERMISSIONS:Ljava/util/HashMap;

    .line 454
    const-string v1, "allow_parent_profile_app_linking"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string/jumbo v1, "no_add_clone_profile"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string/jumbo v1, "no_add_private_profile"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string/jumbo v1, "no_add_user"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string/jumbo v1, "no_add_wifi_config"

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v1, "no_adjust_volume"

    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_AIRPLANE_MODE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_airplane_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v1, "no_ambient_display"

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string/jumbo v1, "no_control_apps"

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_AUTOFILL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_autofill"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string/jumbo v1, "no_bluetooth"

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string/jumbo v1, "no_bluetooth_sharing"

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_camera"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_CAMERA_TOGGLE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "disallow_camera_toggle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string/jumbo v1, "no_cellular_2g"

    filled-new-array/range {v25 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string/jumbo v1, "no_change_wifi_state"

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string/jumbo v1, "no_config_bluetooth"

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string/jumbo v1, "no_config_brightness"

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string/jumbo v1, "no_config_cell_broadcasts"

    filled-new-array/range {v25 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string/jumbo v1, "no_config_credentials"

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_TIME"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_config_date_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v1, "android.permission.MANAGE_DEFAULT_APPLICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "disallow_config_default_apps"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_LOCALE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_config_locale"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string/jumbo v1, "no_config_location"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v1, "no_config_mobile_networks"

    filled-new-array/range {v25 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_RESTRICT_PRIVATE_DNS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "disallow_config_private_dns"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string/jumbo v1, "no_config_screen_timeout"

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string/jumbo v1, "no_config_tethering"

    filled-new-array/range {v25 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_VPN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_config_vpn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string/jumbo v1, "no_config_wifi"

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string/jumbo v1, "no_content_capture"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string/jumbo v1, "no_content_suggestions"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_WINDOWS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_create_windows"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string/jumbo v1, "no_cross_profile_copy_paste"

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string/jumbo v1, "no_data_roaming"

    filled-new-array/range {v25 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_DEBUGGING_FEATURES"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_FACTORY_RESET"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_factory_reset"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_FUN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_fun"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string/jumbo v1, "no_grant_admin"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string/jumbo v1, "no_install_apps"

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string/jumbo v1, "no_install_unknown_sources"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string/jumbo v1, "no_install_unknown_sources_globally"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE_TOGGLE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "disallow_microphone_toggle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_ACCOUNT_MANAGEMENT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_modify_accounts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_PHYSICAL_MEDIA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_physical_media"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string/jumbo v1, "no_network_reset"

    filled-new-array/range {v25 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string/jumbo v1, "no_outgoing_beam"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_CALLS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_PRINTING"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_printing"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string/jumbo v1, "no_remove_user"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_RUN_IN_BACKGROUND"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_run_in_background"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_SAFE_BOOT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_safe_boot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string/jumbo v1, "no_set_user_icon"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_WALLPAPER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_set_wallpaper"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string/jumbo v1, "no_sharing_into_profile"

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string/jumbo v1, "no_share_location"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string/jumbo v1, "no_sharing_admin_configured_wifi"

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_DIALOGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_system_error_dialogs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_THREAD_NETWORK"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_thread_network"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_ASSIST_CONTENT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_assist_content"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string/jumbo v1, "no_ultra_wideband_radio"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string/jumbo v1, "no_near_field_communication_radio"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string/jumbo v1, "no_unified_password"

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string/jumbo v1, "no_uninstall_apps"

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v1, "disallow_unmute_device"

    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_unmute_microphone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v1, "android.permission.MANAGE_DEVICE_POLICY_USB_FILE_TRANSFER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_usb_file_transfer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string/jumbo v1, "no_user_switch"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string/jumbo v1, "no_wifi_direct"

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string/jumbo v1, "no_wifi_tethering"

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v1, "ensure_verify_apps"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string/jumbo v1, "no_sim_globally"

    filled-new-array/range {v25 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v1, "no_record_audio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string/jumbo v1, "no_wallpaper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/PermissionChecker$Delegate;)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mDelegate:Lcom/android/server/devicepolicy/PermissionChecker$Delegate;

    return-void
.end method


# virtual methods
.method public enforce(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)V
    .registers 4

    .line 696
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/PermissionChecker;->hasPermission(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 697
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Caller does not have the required permissions for this user. Permission required: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforce(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V
    .registers 5

    .line 717
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/PermissionChecker;->enforce(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)V

    .line 718
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/CallerIdentity;->getUserId()I

    move-result v0

    if-eq p3, v0, :cond_14

    .line 719
    sget-object p3, Lcom/android/server/devicepolicy/PermissionChecker;->CROSS_USER_PERMISSIONS:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/PermissionChecker;->enforce(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)V

    :cond_14
    return-void
.end method

.method public enforce([Ljava/lang/String;ILcom/android/server/devicepolicy/CallerIdentity;I)V
    .registers 6

    .line 784
    iget-object v0, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mDelegate:Lcom/android/server/devicepolicy/PermissionChecker$Delegate;

    invoke-interface {v0, p2, p3}, Lcom/android/server/devicepolicy/PermissionChecker$Delegate;->hasAdminPolicy(ILcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 785
    invoke-virtual {p3}, Lcom/android/server/devicepolicy/CallerIdentity;->getUserId()I

    move-result p2

    if-ne p2, p4, :cond_f

    return-void

    .line 789
    :cond_f
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/devicepolicy/PermissionChecker;->enforce([Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V

    return-void
.end method

.method public enforce([Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)V
    .registers 4

    .line 734
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/CallerIdentity;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/PermissionChecker;->enforce([Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V

    return-void
.end method

.method public enforce([Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V
    .registers 8

    .line 754
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 755
    invoke-virtual {p0, v2, p2}, Lcom/android/server/devicepolicy/PermissionChecker;->hasPermission(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_12

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 754
    :cond_10
    const-string v2, ""

    .line 760
    :goto_12
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 765
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/devicepolicy/PermissionChecker;->enforce(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V

    return-void

    .line 761
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Caller does not have the required permissions for this user. One of the following permission required: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforceCanQuery(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)V
    .registers 4

    .line 850
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/CallerIdentity;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/PermissionChecker;->enforceCanQuery(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V

    return-void
.end method

.method public enforceCanQuery(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V
    .registers 5

    .line 869
    const-string v0, "android.permission.QUERY_ADMIN_POLICY"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/devicepolicy/PermissionChecker;->hasPermission(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 872
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PermissionChecker;->enforce(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V

    return-void
.end method

.method public enforceForUserRestriction(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V
    .registers 6

    .line 823
    sget-object v0, Lcom/android/server/devicepolicy/PermissionChecker;->USER_RESTRICTION_PERMISSIONS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 824
    array-length v1, v0

    if-eqz v1, :cond_33

    .line 829
    :try_start_b
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/devicepolicy/PermissionChecker;->enforce([Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 831
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Caller does not hold the required permission for this user restriction: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 825
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Admins are not permitted to set User Restriction: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasPermission(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 640
    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/CallerIdentity;->getPid()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/CallerIdentity;->getUid()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_15

    return v0

    .line 646
    :cond_15
    iget-object v0, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mDelegate:Lcom/android/server/devicepolicy/PermissionChecker$Delegate;

    invoke-interface {v0, p2}, Lcom/android/server/devicepolicy/PermissionChecker$Delegate;->getDpcType(Lcom/android/server/devicepolicy/CallerIdentity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    .line 647
    sget-object v0, Lcom/android/server/devicepolicy/PermissionChecker;->DPC_PERMISSIONS:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mDelegate:Lcom/android/server/devicepolicy/PermissionChecker$Delegate;

    invoke-interface {p0, p2}, Lcom/android/server/devicepolicy/PermissionChecker$Delegate;->getDpcType(Lcom/android/server/devicepolicy/CallerIdentity;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 652
    :cond_35
    iget-object v0, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mDelegate:Lcom/android/server/devicepolicy/PermissionChecker$Delegate;

    invoke-interface {v0, p2}, Lcom/android/server/devicepolicy/PermissionChecker$Delegate;->isCallerDevicePolicyManagementRoleHolder(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_66

    .line 653
    iget-object v0, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mDelegate:Lcom/android/server/devicepolicy/PermissionChecker$Delegate;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/CallerIdentity;->getUserId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/server/devicepolicy/PermissionChecker$Delegate;->getUserDpcType(I)I

    move-result v0

    if-eq v0, v1, :cond_65

    .line 654
    sget-object v0, Lcom/android/server/devicepolicy/PermissionChecker;->DPC_PERMISSIONS:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mDelegate:Lcom/android/server/devicepolicy/PermissionChecker$Delegate;

    .line 655
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/CallerIdentity;->getUserId()I

    move-result p2

    invoke-interface {p0, p2}, Lcom/android/server/devicepolicy/PermissionChecker$Delegate;->getUserDpcType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 654
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 655
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_65
    return v2

    .line 660
    :cond_66
    sget-object v0, Lcom/android/server/devicepolicy/PermissionChecker;->DELEGATE_SCOPES:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 661
    iget-object p0, p0, Lcom/android/server/devicepolicy/PermissionChecker;->mDelegate:Lcom/android/server/devicepolicy/PermissionChecker$Delegate;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p2, p1}, Lcom/android/server/devicepolicy/PermissionChecker$Delegate;->isCallerDelegate(Lcom/android/server/devicepolicy/CallerIdentity;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_7b
    return v2
.end method

.method public hasPermission(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;I)Z
    .registers 7

    .line 677
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/PermissionChecker;->hasPermission(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 679
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/CallerIdentity;->getUserId()I

    move-result v2

    if-eq v2, p3, :cond_1a

    .line 680
    sget-object p3, Lcom/android/server/devicepolicy/PermissionChecker;->CROSS_USER_PERMISSIONS:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/PermissionChecker;->hasPermission(Ljava/lang/String;Lcom/android/server/devicepolicy/CallerIdentity;)Z

    move-result p0

    goto :goto_1b

    :cond_1a
    move p0, v1

    :goto_1b
    if-eqz v0, :cond_20

    if-eqz p0, :cond_20

    return v1

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
