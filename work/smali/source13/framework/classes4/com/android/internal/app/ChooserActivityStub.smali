.class public Lcom/android/internal/app/ChooserActivityStub;
.super Ljava/lang/Object;
.source "ChooserActivityStub.java"


# static fields
.field private static final blacklist sInstance:Lcom/android/internal/app/ChooserActivityStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/android/internal/app/ChooserActivityStub;

    .line 11
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivityStub;

    sput-object v0, Lcom/android/internal/app/ChooserActivityStub;->sInstance:Lcom/android/internal/app/ChooserActivityStub;

    .line 10
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/app/ChooserActivityStub;
    .registers 1

    .line 14
    sget-object v0, Lcom/android/internal/app/ChooserActivityStub;->sInstance:Lcom/android/internal/app/ChooserActivityStub;

    return-object v0
.end method

.method public static blacklist newInstance()Lcom/android/internal/app/ChooserActivityStub;
    .registers 1

    .line 18
    const-class v0, Lcom/android/internal/app/ChooserActivityStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivityStub;

    return-object v0
.end method


# virtual methods
.method public blacklist canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canInterceptByMiAppStore(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dealWithActonViewIntent(Landroid/content/Intent;[Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "initialIntents"    # [Landroid/content/Intent;

    .line 23
    return-void
.end method

.method public blacklist isInterceptedByMiAppStore(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notAllowHomeLaunchedAgain(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startInterceptByMiAppStore(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Object;Lcom/android/internal/app/ResolverRankerServiceResolverComparator;I)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolverController"    # Ljava/lang/Object;
    .param p4, "resolverComparator"    # Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
    .param p5, "launchedFromUid"    # I

    .line 36
    return-void
.end method

.method public blacklist stopInterceptByMiAppStore(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 43
    return-void
.end method
