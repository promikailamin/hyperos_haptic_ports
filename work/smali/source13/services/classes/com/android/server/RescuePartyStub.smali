.class public Lcom/android/server/RescuePartyStub;
.super Ljava/lang/Object;
.source "RescuePartyStub.java"


# static fields
.field private static final INSTANCE:Lcom/android/server/RescuePartyStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/RescuePartyStub;

    .line 9
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/RescuePartyStub;

    sput-object v0, Lcom/android/server/RescuePartyStub;->INSTANCE:Lcom/android/server/RescuePartyStub;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/RescuePartyStub;
    .registers 1

    .line 12
    sget-object v0, Lcom/android/server/RescuePartyStub;->INSTANCE:Lcom/android/server/RescuePartyStub;

    return-object v0
.end method


# virtual methods
.method public isLauncher(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public maybeDoResetConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "failedPackage"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    return v0
.end method
