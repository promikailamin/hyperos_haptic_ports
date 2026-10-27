.class public Lcom/android/server/autofill/RemoteFillService$ISaveCallbackDelegate;
.super Landroid/service/autofill/ISaveCallback$Stub;
.source "RemoteFillService.java"


# instance fields
.field public mCallbackWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/service/autofill/ISaveCallback;)V
    .registers 3

    .line 208
    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    .line 209
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$ISaveCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$ISaveCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/ISaveCallback;

    if-eqz p0, :cond_d

    .line 224
    invoke-interface {p0, p1}, Landroid/service/autofill/ISaveCallback;->onFailure(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public onSuccess(Landroid/content/IntentSender;)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$ISaveCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/ISaveCallback;

    if-eqz p0, :cond_d

    .line 216
    invoke-interface {p0, p1}, Landroid/service/autofill/ISaveCallback;->onSuccess(Landroid/content/IntentSender;)V

    :cond_d
    return-void
.end method
