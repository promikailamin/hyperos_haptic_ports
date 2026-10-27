.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;
.super Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;
.source "SoundTriggerHw3Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelCallbackAdaper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 224
    invoke-direct {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 226
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 254
    const-string v0, "7d8d63478cd50e766d2072140c8aa3457f9fb585"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public modelUnloaded(I)V
    .registers 3
    .param p1, "model"    # I

    .line 230
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->modelUnloaded(I)V

    .line 231
    return-void
.end method

.method public phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .registers 7
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 236
    iget-object v0, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 237
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    .line 238
    return-void
.end method

.method public recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V
    .registers 6
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/RecognitionEvent;

    .line 243
    iget-boolean v0, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    iget v1, p2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    or-int/2addr v0, v1

    iput-boolean v0, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    .line 244
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$ModelCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    .line 245
    return-void
.end method
