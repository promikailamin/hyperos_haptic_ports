.class Lcom/android/server/policy/PhoneWindowManager$Injector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public static synthetic $r8$lambda$b00RGJpCf1JGHPQ5VnktvrvGBgA(Lcom/android/server/policy/PhoneWindowManager$Injector;)Lcom/android/server/policy/GlobalActions;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->lambda$getGlobalActionsFactory$0()Lcom/android/server/policy/GlobalActions;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerFuncs(Lcom/android/server/policy/PhoneWindowManager$Injector;)Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 3

    .line 2285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2286
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    .line 2287
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    return-void
.end method


# virtual methods
.method public getActivityManagerService()Landroid/app/IActivityManager;
    .registers 1

    .line 2322
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getButtonOverridePermissionChecker()Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;
    .registers 1

    .line 2330
    new-instance p0, Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;-><init>()V

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 2291
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getGlobalActionsFactory()Ljava/util/function/Supplier;
    .registers 2

    .line 2303
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    return-object v0
.end method

.method public getKeyguardServiceDelegate()Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    .registers 4

    .line 2307
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$Injector$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$Injector$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    return-object v0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    .line 2326
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 1

    .line 2299
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getTalkbackShortcutController()Lcom/android/server/policy/TalkbackShortcutController;
    .registers 2

    .line 2334
    new-instance v0, Lcom/android/server/policy/TalkbackShortcutController;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/policy/TalkbackShortcutController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getUptimeMillis()J
    .registers 3

    .line 2342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWindowManagerFuncs()Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;
    .registers 1

    .line 2295
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    return-object p0
.end method

.method public getWindowWakeUpPolicy()Lcom/android/server/policy/WindowWakeUpPolicy;
    .registers 2

    .line 2338
    new-instance v0, Lcom/android/server/policy/WindowWakeUpPolicy;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WindowWakeUpPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final synthetic lambda$getGlobalActionsFactory$0()Lcom/android/server/policy/GlobalActions;
    .registers 3

    .line 2303
    new-instance v0, Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    return-object v0
.end method
