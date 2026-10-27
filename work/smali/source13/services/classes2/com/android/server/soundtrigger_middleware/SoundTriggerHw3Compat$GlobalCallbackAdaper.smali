.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;
.super Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;
.source "SoundTriggerHw3Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalCallbackAdaper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 201
    invoke-direct {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    .line 203
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 217
    const-string v0, "7d8d63478cd50e766d2072140c8aa3457f9fb585"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public onResourcesAvailable()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat$GlobalCallbackAdaper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;->onResourcesAvailable()V

    .line 208
    return-void
.end method
