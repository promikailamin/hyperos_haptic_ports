.class final Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;
.super Landroid/os/AsyncTask;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextClassificationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mOriginalText:Ljava/lang/String;

.field private final greylist-max-o mSelectionResultCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSelectionResultSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTextView:Landroid/widget/TextView;

.field private final greylist-max-o mTimeOutDuration:I

.field private final greylist-max-o mTimeOutResultSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$hPa951VBVINLDsSAuruPyVIydiY(Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->onTimeOut()V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V
    .registers 8
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "timeOut"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;)V"
        }
    .end annotation

    .line 1021
    .local p3, "selectionResultSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/widget/SelectionActionModeHelper$SelectionResult;>;"
    .local p4, "selectionResultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/widget/SelectionActionModeHelper$SelectionResult;>;"
    .local p5, "timeOutResultSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/widget/SelectionActionModeHelper$SelectionResult;>;"
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, v0}, Landroid/os/AsyncTask;-><init>(Landroid/os/Handler;)V

    .line 1022
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    .line 1023
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutDuration:I

    .line 1024
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultSupplier:Ljava/util/function/Supplier;

    .line 1025
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultCallback:Ljava/util/function/Consumer;

    .line 1026
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutResultSupplier:Ljava/util/function/Supplier;

    .line 1028
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->-$$Nest$smgetText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mOriginalText:Ljava/lang/String;

    .line 1029
    return-void
.end method

.method private greylist-max-o onTimeOut()V
    .registers 3

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout in TextClassificationAsyncTask of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectActionModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2d

    .line 1057
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutResultSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-virtual {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->onPostExecute(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 1059
    :cond_2d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->cancel(Z)Z

    .line 1060
    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;

    .line 1034
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;)V

    .line 1035
    .local v0, "onTimeOut":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1036
    const/4 v1, 0x0

    .line 1038
    .local v1, "result":Landroid/widget/SelectionActionModeHelper$SelectionResult;
    :try_start_e
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SelectionActionModeHelper$SelectionResult;
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_16} :catch_18

    move-object v1, v2

    .line 1042
    goto :goto_20

    .line 1039
    :catch_18
    move-exception v2

    .line 1041
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "SelectActionModeHelper"

    const-string v4, "TextClassificationAsyncTask failed."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_20
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1044
    return-object v1
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 999
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o onPostExecute(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .registers 4
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 1050
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->-$$Nest$smgetText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, p1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move-object p1, v0

    .line 1051
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1052
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 999
    check-cast p1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-virtual {p0, p1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->onPostExecute(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method
