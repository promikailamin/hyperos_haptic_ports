.class public Landroid/drm/DrmStore$Playback;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playback"
.end annotation


# static fields
.field public static final whitelist PAUSE:I = 0x2

.field public static final whitelist RESUME:I = 0x3

.field public static final whitelist START:I = 0x0

.field public static final whitelist STOP:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o isValid(I)Z
    .registers 1

    .line 143
    nop

    .line 145
    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    goto :goto_7

    .line 150
    :pswitch_6
    const/4 p0, 0x1

    .line 152
    :goto_7
    return p0

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
