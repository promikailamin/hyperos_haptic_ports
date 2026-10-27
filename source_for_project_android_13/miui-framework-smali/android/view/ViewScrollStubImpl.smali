.class public Landroid/view/ViewScrollStubImpl;
.super Ljava/lang/Object;
.source "ViewScrollStubImpl.java"

# interfaces
.implements Landroid/view/ViewScrollStub;


# static fields
.field private static final blacklist SCROLL_FRICTION_FACTOR:Ljava/lang/String;

.field public static final blacklist TAG:Ljava/lang/String; = "ViewScrollStubImpl"


# instance fields
.field private blacklist mScrollFlag:Z

.field private blacklist mScrollFrictionRes:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 17
    nop

    .line 18
    const-string v0, "persist.sys.view.ScrollFrictionFactor"

    const-string v1, "1.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/ViewScrollStubImpl;->SCROLL_FRICTION_FACTOR:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist scrollFrictionInit(F)F
    .registers 4
    .param p1, "scrollFriction"    # F

    .line 27
    iget-boolean v0, p0, Landroid/view/ViewScrollStubImpl;->mScrollFlag:Z

    if-nez v0, :cond_2a

    .line 28
    sget-object v0, Landroid/view/ViewScrollStubImpl;->SCROLL_FRICTION_FACTOR:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/view/ViewScrollStubImpl;->mScrollFrictionRes:F

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the value of mScrollFrictionRes is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewScrollStubImpl;->mScrollFrictionRes:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewScrollStubImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewScrollStubImpl;->mScrollFlag:Z

    .line 33
    :cond_2a
    iget v0, p0, Landroid/view/ViewScrollStubImpl;->mScrollFrictionRes:F

    return v0
.end method
