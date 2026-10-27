.class public final synthetic Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDroppedCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameDropped(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;

    invoke-virtual {v0, p1}, Landroid/view/ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl;->lambda$addFrameDroppedCallbackIfNeeded$0$android-view-ChoreographerInjectorStubImpl$DynamicBufferInfoStubImpl(I)V

    return-void
.end method
