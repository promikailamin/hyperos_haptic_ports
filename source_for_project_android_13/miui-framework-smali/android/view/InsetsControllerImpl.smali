.class public Landroid/view/InsetsControllerImpl;
.super Ljava/lang/Object;
.source "InsetsControllerImpl.java"

# interfaces
.implements Landroid/view/InsetsControllerStub;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InsetsControllerImpl"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFadeInAnimationDurationMs(I)I
    .registers 5
    .param p1, "fadeInDuration"    # I

    .line 18
    invoke-static {}, Lmiui/os/Build;->getDeviceLevelForAnimation()I

    move-result v0

    .line 19
    .local v0, "level":I
    packed-switch v0, :pswitch_data_36

    .line 30
    return p1

    .line 23
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change fadeInDuration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit16 v2, p1, 0xfa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms for the lowmem and middle device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InsetsControllerImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    add-int/lit16 v1, p1, 0xfa

    return v1

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
