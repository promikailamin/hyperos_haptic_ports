.class public interface abstract Lcom/android/server/pm/UserManagerServiceStub;
.super Ljava/lang/Object;
.source "UserManagerServiceStub.java"


# static fields
.field public static final FLAG_MAINTENANCE_MODE:I = 0x8000000

.field public static final MAINTENANCE_MODE:Landroid/os/UserHandle;

.field public static final MAINTENANCE_MODE_ID:I = 0x6e


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/UserManagerServiceStub;->MAINTENANCE_MODE:Landroid/os/UserHandle;

    return-void
.end method

.method public static get()Lcom/android/server/pm/UserManagerServiceStub;
    .registers 1

    .line 25
    const-class v0, Lcom/android/server/pm/UserManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract checkAndGetNewUserId(II)I
.end method

.method public abstract isInMaintenanceMode(Landroid/content/Context;)Z
.end method
