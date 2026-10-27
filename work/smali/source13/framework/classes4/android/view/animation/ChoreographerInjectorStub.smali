.class public interface abstract Landroid/view/animation/ChoreographerInjectorStub;
.super Ljava/lang/Object;
.source "ChoreographerInjectorStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ChoreographerInjectorStub"

.field public static final blacklist sInstance:Landroid/view/animation/ChoreographerInjectorStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const-class v0, Landroid/view/animation/ChoreographerInjectorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/ChoreographerInjectorStub;

    sput-object v0, Landroid/view/animation/ChoreographerInjectorStub;->sInstance:Landroid/view/animation/ChoreographerInjectorStub;

    return-void
.end method

.method public static blacklist getInstance()Landroid/view/animation/ChoreographerInjectorStub;
    .registers 1

    .line 21
    sget-object v0, Landroid/view/animation/ChoreographerInjectorStub;->sInstance:Landroid/view/animation/ChoreographerInjectorStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist cacheBufferIfNeeded(Landroid/os/Handler;JJJ)V
.end method

.method public blacklist creatDynamicBufferInfo(Landroid/graphics/BLASTBufferQueue;Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;)Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub;
    .registers 4
    .param p1, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;
    .param p2, "callback"    # Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist disableAnimation(I)Z
.end method

.method public abstract blacklist isDoFrameOptEnabled()Z
.end method

.method public blacklist setIsPageScroll(Z)V
    .registers 2
    .param p1, "isPageScroll"    # Z

    .line 30
    return-void
.end method

.method public abstract blacklist windowFocusChanged(Ljava/lang/String;Z)V
.end method
