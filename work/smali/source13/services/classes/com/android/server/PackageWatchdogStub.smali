.class public Lcom/android/server/PackageWatchdogStub;
.super Ljava/lang/Object;
.source "PackageWatchdogStub.java"


# static fields
.field private static final INSTANCE:Lcom/android/server/PackageWatchdogStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/PackageWatchdogStub;

    .line 10
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageWatchdogStub;

    sput-object v0, Lcom/android/server/PackageWatchdogStub;->INSTANCE:Lcom/android/server/PackageWatchdogStub;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/PackageWatchdogStub;
    .registers 1

    .line 13
    sget-object v0, Lcom/android/server/PackageWatchdogStub;->INSTANCE:Lcom/android/server/PackageWatchdogStub;

    return-object v0
.end method


# virtual methods
.method public doRescuePartyPlusStep(ILandroid/content/pm/VersionedPackage;Landroid/content/Context;)Z
    .registers 5
    .param p1, "mitigationCount"    # I
    .param p2, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p3, "context"    # Landroid/content/Context;

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public maybeShowRecoveryTip(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    return-void
.end method

.method public recordMitigationCount(I)V
    .registers 2
    .param p1, "mitigationCount"    # I

    .line 26
    return-void
.end method
