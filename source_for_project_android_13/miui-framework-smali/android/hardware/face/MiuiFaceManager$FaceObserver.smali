.class Landroid/hardware/face/MiuiFaceManager$FaceObserver;
.super Landroid/database/ContentObserver;
.source "MiuiFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/MiuiFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/MiuiFaceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/face/MiuiFaceManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 463
    iput-object p1, p0, Landroid/hardware/face/MiuiFaceManager$FaceObserver;->this$0:Landroid/hardware/face/MiuiFaceManager;

    .line 464
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 465
    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 469
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 470
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "lastPathSegment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "face_unlock_valid_feature"

    const-string v3, "power_supersave_mode_open"

    const-string v4, "face_unlock_has_feature"

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_6e

    :cond_16
    goto :goto_2f

    :sswitch_17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v5

    goto :goto_30

    :sswitch_1f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    goto :goto_30

    :sswitch_27
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v6

    goto :goto_30

    :goto_2f
    const/4 v1, -0x1

    :goto_30
    packed-switch v1, :pswitch_data_7c

    goto :goto_6c

    .line 481
    :pswitch_34
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager$FaceObserver;->this$0:Landroid/hardware/face/MiuiFaceManager;

    iget-object v2, v1, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_44

    :cond_43
    move v5, v6

    :goto_44
    invoke-static {v1, v5}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fputmIsSuperPower(Landroid/hardware/face/MiuiFaceManager;Z)V

    goto :goto_6c

    .line 477
    :pswitch_48
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager$FaceObserver;->this$0:Landroid/hardware/face/MiuiFaceManager;

    iget-object v3, v1, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_58

    :cond_57
    move v5, v6

    :goto_58
    invoke-static {v1, v5}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fputmIsValid(Landroid/hardware/face/MiuiFaceManager;Z)V

    .line 479
    goto :goto_6c

    .line 473
    :pswitch_5c
    iget-object v1, p0, Landroid/hardware/face/MiuiFaceManager$FaceObserver;->this$0:Landroid/hardware/face/MiuiFaceManager;

    iget-object v2, v1, Landroid/hardware/face/MiuiFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v6, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$fputmFaceCount(Landroid/hardware/face/MiuiFaceManager;I)V

    .line 475
    nop

    .line 485
    :goto_6c
    return-void

    nop

    :sswitch_data_6e
    .sparse-switch
        -0x65de7d08 -> :sswitch_27
        0x10b69525 -> :sswitch_1f
        0x7192709a -> :sswitch_17
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_48
        :pswitch_34
    .end packed-switch
.end method
