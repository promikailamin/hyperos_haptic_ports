.class Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;
.super Landroid/os/ResultReceiver;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefinementResultReceiver"
.end annotation


# instance fields
.field private blacklist mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

.field private blacklist mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Handler;)V
    .registers 4
    .param p1, "host"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "target"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 4417
    invoke-direct {p0, p3}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 4418
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    .line 4419
    iput-object p2, p0, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;

    .line 4420
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 2

    .line 4455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    .line 4456
    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;

    .line 4457
    return-void
.end method

.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 4424
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    const-string v1, "MiuiChooserActivity"

    if-nez v0, :cond_c

    .line 4425
    const-string v0, "Destroyed RefinementResultReceiver received a result"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    return-void

    .line 4428
    :cond_c
    if-nez p2, :cond_14

    .line 4429
    const-string v0, "RefinementResultReceiver received null resultData"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    return-void

    .line 4433
    :cond_14
    packed-switch p1, :pswitch_data_54

    .line 4448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown result code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sent to RefinementResultReceiver"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 4435
    :pswitch_34
    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->onRefinementCanceled()V

    .line 4436
    goto :goto_53

    .line 4438
    :pswitch_38
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 4439
    .local v0, "intentParcelable":Landroid/os/Parcelable;
    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_4d

    .line 4440
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/MiuiChooserActivity;->onRefinementResult(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)V

    goto :goto_53

    .line 4443
    :cond_4d
    const-string v2, "RefinementResultReceiver received RESULT_OK but no Intent in resultData with key Intent.EXTRA_INTENT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    nop

    .line 4452
    .end local v0    # "intentParcelable":Landroid/os/Parcelable;
    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch -0x1
        :pswitch_38
        :pswitch_34
    .end packed-switch
.end method
