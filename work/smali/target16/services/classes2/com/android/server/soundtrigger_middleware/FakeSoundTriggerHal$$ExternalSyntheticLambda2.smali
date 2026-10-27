.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->$r8$lambda$IDPo4Vyq08W-b31ENAIaet2E0FE(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V

    return-void
.end method
