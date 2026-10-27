.class public Landroid/app/StatusBarManagerStub;
.super Ljava/lang/Object;
.source "StatusBarManagerStub.java"


# static fields
.field private static final blacklist sInstance:Landroid/app/StatusBarManagerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const-class v0, Landroid/app/StatusBarManagerStub;

    .line 15
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManagerStub;

    sput-object v0, Landroid/app/StatusBarManagerStub;->sInstance:Landroid/app/StatusBarManagerStub;

    .line 14
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/app/StatusBarManagerStub;
    .registers 1

    .line 19
    sget-object v0, Landroid/app/StatusBarManagerStub;->sInstance:Landroid/app/StatusBarManagerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "ext"    # Landroid/os/Bundle;

    .line 24
    return-void
.end method
