.class Lcom/android/internal/widget/LockPatternUtils$2;
.super Landroid/app/PropertyInvalidatedCache$QueryHandler;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
        "Ljava/lang/Integer;",
        "Ljava/time/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1179
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$2;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1179
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$2;->apply(Ljava/lang/Integer;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Ljava/lang/Integer;)Ljava/time/Duration;
    .registers 4

    .line 1183
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$2;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getLockoutEndTime(I)Landroid/os/ParcelDuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelDuration;->getDuration()Ljava/time/Duration;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    .line 1184
    :catch_13
    move-exception p1

    .line 1185
    const-string v0, "LockPatternUtils"

    const-string v1, "failed to get lockout end time"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object p1
.end method
