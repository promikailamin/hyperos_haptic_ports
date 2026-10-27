.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService;
.super Lcom/android/server/SystemService;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;,
        Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;,
        Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;,
        Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;,
        Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final DEBUG_LOGGING:Z = false

.field public static final REMINDER_DIALOG_DELAY_MILLIS:I = 0x1f4

.field private static final SENSOR_PRIVACY_CHANNEL_ID:Ljava/lang/String; = "sensor_privacy"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field private final mAppOpsRestrictionToken:Landroid/os/IBinder;

.field private mCallStateHelper:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

.field private mCameraPrivacyLightController:Lcom/android/server/sensorprivacy/CameraPrivacyLightController;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSensorPrivacyManagerInternal:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

.field private final mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityTaskManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityTaskManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallStateHelper(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCallStateHelper:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/KeyguardManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorPrivacyManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyManagerInternal:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->forAllUsers(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetACTION_DISABLE_TOGGLE_SENSOR_PRIVACY()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 142
    const-class v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->TAG:Ljava/lang/String;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".action.disable_sensor_privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsRestrictionToken:Landroid/os/IBinder;

    .line 172
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 177
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 178
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 179
    const-class v0, Landroid/app/AppOpsManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManagerInternal;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 180
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 181
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManager:Landroid/app/ActivityManager;

    .line 182
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 183
    const-class v0, Landroid/app/ActivityTaskManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 184
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 185
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 186
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 187
    return-void
.end method

.method private forAllUsers(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1419
    .local p1, "c":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1420
    .local v0, "userIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 1421
    aget v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V

    .line 1420
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1423
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

.method static getCurrentTimeMillis()J
    .registers 2

    .line 1615
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 199
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_18

    .line 200
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 201
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCallStateHelper:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    goto :goto_25

    .line 202
    :cond_18
    const/16 v0, 0x226

    if-ne p1, v0, :cond_25

    .line 203
    new-instance v0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCameraPrivacyLightController:Lcom/android/server/sensorprivacy/CameraPrivacyLightController;

    .line 205
    :cond_25
    :goto_25
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    const-string/jumbo v1, "sensor_privacy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 192
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyManagerInternal:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    .line 193
    const-class v1, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 209
    iget v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_15

    .line 210
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 211
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    .line 213
    :cond_15
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 6
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 217
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 218
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    .line 219
    return-void
.end method
