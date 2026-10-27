.class public Landroid/app/AppOpsManagerStub;
.super Ljava/lang/Object;
.source "AppOpsManagerStub.java"


# static fields
.field private static final blacklist sInstance:Landroid/app/AppOpsManagerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const-class v0, Landroid/app/AppOpsManagerStub;

    .line 10
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManagerStub;

    sput-object v0, Landroid/app/AppOpsManagerStub;->sInstance:Landroid/app/AppOpsManagerStub;

    .line 9
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/app/AppOpsManagerStub;
    .registers 1

    .line 13
    sget-object v0, Landroid/app/AppOpsManagerStub;->sInstance:Landroid/app/AppOpsManagerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist opToDefaultMode(I)I
    .registers 3
    .param p1, "op"    # I

    .line 17
    const/4 v0, 0x0

    return v0
.end method
