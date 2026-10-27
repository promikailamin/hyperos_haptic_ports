.class public interface abstract Landroid/view/InsetsControllerStub;
.super Ljava/lang/Object;
.source "InsetsControllerStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/view/InsetsControllerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const-class v0, Landroid/view/InsetsControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsControllerStub;

    sput-object v0, Landroid/view/InsetsControllerStub;->sInstance:Landroid/view/InsetsControllerStub;

    return-void
.end method

.method public static blacklist get()Landroid/view/InsetsControllerStub;
    .registers 1

    .line 15
    sget-object v0, Landroid/view/InsetsControllerStub;->sInstance:Landroid/view/InsetsControllerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist getFadeInAnimationDurationMs(I)I
    .registers 2
    .param p1, "fadeInDuration"    # I

    .line 19
    return p1
.end method
