.class public final Landroid/os/MiuiBinderTransaction$IDisplayManager;
.super Ljava/lang/Object;
.source "MiuiBinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiBinderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IDisplayManager"
.end annotation


# static fields
.field public static final blacklist INTERFACE_DESCRIPTOR:Ljava/lang/String; = "android.view.android.hardware.display.IDisplayManager"

.field public static final blacklist TRANSACT_ID_GET_SCREEN_EFFECT_DISPLAY:I = 0xfffffc

.field public static final blacklist TRANSACT_ID_GET_SCREEN_EFFECT_DISPLAY_INDEX:I = 0xfffffb

.field public static final blacklist TRANSACT_ID_RESET_SHORT_MODEL:I = 0xfffffe

.field public static final blacklist TRANSACT_ID_SET_BRIGHTNESS:I = 0xfffff9

.field public static final blacklist TRANSACT_ID_SET_BRIGHTNESS_RATE:I = 0xfffffd

.field public static final blacklist TRANSACT_ID_SET_SCENE_FRAME_RATE:I = 0xfffff8

.field public static final blacklist TRANSACT_ID_SET_VIDEO_INFORMATION:I = 0xfffffa


# instance fields
.field final synthetic blacklist this$0:Landroid/os/MiuiBinderTransaction;


# direct methods
.method public constructor blacklist <init>(Landroid/os/MiuiBinderTransaction;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/MiuiBinderTransaction;

    .line 34
    iput-object p1, p0, Landroid/os/MiuiBinderTransaction$IDisplayManager;->this$0:Landroid/os/MiuiBinderTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
