.class public abstract Landroid/app/servertransaction/WindowStateTransactionItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowStateTransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;
    }
.end annotation


# instance fields
.field private final blacklist mWindow:Landroid/view/IWindow;


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/IWindow;

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/IWindow;

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 92
    if-ne p0, p1, :cond_4

    .line 93
    const/4 p1, 0x1

    return p1

    .line 95
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 98
    :cond_11
    check-cast p1, Landroid/app/servertransaction/WindowStateTransactionItem;

    .line 99
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    iget-object p1, p1, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 96
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5

    .line 59
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    instance-of v1, v0, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;

    if-eqz v1, :cond_b

    check-cast v0, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;

    .line 60
    invoke-interface {v0}, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;->onExecutingWindowStateTransactionItem()V

    .line 62
    :cond_b
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 63
    return-void
.end method

.method public abstract blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 79
    iget-object p2, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 80
    return-void
.end method
