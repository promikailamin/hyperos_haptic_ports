.class public Landroid/app/servertransaction/PendingTransactionActions;
.super Ljava/lang/Object;
.source "PendingTransactionActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    }
.end annotation


# instance fields
.field private greylist-max-o mCallOnPostCreate:Z

.field private greylist-max-o mOldState:Landroid/os/Bundle;

.field private greylist-max-o mRestoreInstanceState:Z

.field private greylist-max-o mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/app/servertransaction/PendingTransactionActions;->clear()V

    .line 51
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 2

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mRestoreInstanceState:Z

    .line 56
    iput-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mCallOnPostCreate:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mOldState:Landroid/os/Bundle;

    .line 58
    iput-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    .line 59
    return-void
.end method

.method public greylist-max-o getOldState()Landroid/os/Bundle;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mOldState:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    return-object v0
.end method

.method public greylist-max-o setCallOnPostCreate(Z)V
    .registers 2

    .line 76
    iput-boolean p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mCallOnPostCreate:Z

    .line 77
    return-void
.end method

.method public greylist-max-o setOldState(Landroid/os/Bundle;)V
    .registers 2

    .line 84
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mOldState:Landroid/os/Bundle;

    .line 85
    return-void
.end method

.method public greylist-max-o setRestoreInstanceState(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mRestoreInstanceState:Z

    .line 68
    return-void
.end method

.method public greylist-max-o setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V
    .registers 2

    .line 92
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions;->mStopInfo:Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    .line 93
    return-void
.end method

.method public greylist-max-o shouldCallOnPostCreate()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mCallOnPostCreate:Z

    return v0
.end method

.method public greylist-max-o shouldRestoreInstanceState()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Landroid/app/servertransaction/PendingTransactionActions;->mRestoreInstanceState:Z

    return v0
.end method
