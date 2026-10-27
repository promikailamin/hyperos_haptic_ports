.class public Lcom/android/server/autofill/RemoteFieldClassificationService$1;
.super Landroid/service/assist/classification/IFieldClassificationCallback$Stub;
.source "RemoteFieldClassificationService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

.field public final synthetic val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Ljava/lang/ref/WeakReference;J)V
    .registers 5

    .line 152
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    iput-wide p3, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    invoke-direct {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 0
    return-void
.end method

.method public isCompleted()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .registers 8

    .line 155
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_e

    .line 156
    invoke-static {}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onCancellable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_e
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCancellable "

    .line 160
    invoke-static {p1, v0, v1}, Lcom/android/server/autofill/Helper;->weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;

    .line 164
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iget-wide v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    return-void
.end method

.method public onFailure()V
    .registers 8

    .line 208
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_e

    .line 209
    invoke-static {}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onFailure"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_e
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFailure "

    .line 213
    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/Helper;->weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;

    .line 217
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iget-wide v2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    if-nez v4, :cond_2a

    return-void

    :cond_2a
    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 226
    invoke-interface {v4, p0, v0}, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;->onClassificationRequestFailure(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Landroid/service/assist/classification/FieldClassificationResponse;)V
    .registers 9

    .line 173
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string/jumbo v1, "onSuccess "

    if-eqz v0, :cond_62

    .line 174
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_25

    .line 175
    invoke-static {}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSuccess Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_25
    if-eqz p1, :cond_49

    .line 179
    invoke-virtual {p1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_49

    .line 182
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    .line 180
    :cond_49
    :goto_49
    const-string/jumbo v0, "null response"

    .line 185
    :goto_4c
    invoke-static {}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v0, v2, v1}, Lcom/android/server/autofill/Helper;->weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;

    .line 194
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iget-wide v2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    const/4 v5, 0x1

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    if-nez v4, :cond_7b

    return-void

    .line 203
    :cond_7b
    invoke-interface {v4, v6}, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;->onClassificationRequestSuccess(Landroid/service/assist/classification/FieldClassificationResponse;)V

    return-void
.end method
