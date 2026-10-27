.class Landroid/app/KeyguardManager$5;
.super Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->addWeakEscrowToken([BLandroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1111
    iput-object p2, p0, Landroid/app/KeyguardManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/KeyguardManager$5;->val$listener:Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;

    invoke-direct {p0}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onWeakEscrowTokenActivated$0(Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;JLandroid/os/UserHandle;)V
    .registers 4

    .line 1117
    invoke-interface {p0, p1, p2, p3}, Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;->onWeakEscrowTokenActivated(JLandroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public blacklist onWeakEscrowTokenActivated(JI)V
    .registers 9

    .line 1114
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 1115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1117
    :try_start_8
    iget-object v2, p0, Landroid/app/KeyguardManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/app/KeyguardManager$5;->val$listener:Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;

    new-instance v4, Landroid/app/KeyguardManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1, p2, p3}, Landroid/app/KeyguardManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;JLandroid/os/UserHandle;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_20

    .line 1119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1120
    nop

    .line 1121
    const-string p1, "KeyguardManager"

    const-string p2, "Weak escrow token activated."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1119
    :catchall_20
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1120
    throw p1
.end method
