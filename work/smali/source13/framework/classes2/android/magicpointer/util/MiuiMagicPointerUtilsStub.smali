.class public interface abstract Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;
.super Ljava/lang/Object;
.source "MiuiMagicPointerUtilsStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/magicpointer/util/MiuiMagicPointerUtilsStub$SingletonHolder;
    }
.end annotation


# static fields
.field public static final blacklist POLICY_HOVER_STATE_CHANGE:I = 0x5

.field public static final blacklist POLICY_REMOVE_MAGIC_POINTERS:I = 0x3

.field public static final blacklist POLICY_SET_CUSTOM_POINTER_ICON:I = 0x7

.field public static final blacklist POLICY_SET_POINTER_ICON:I = 0x6

.field public static final blacklist POLICY_UPDATE_MAGIC_POINTER:I = 0x1

.field public static final blacklist POLICY_UPDATE_POINTER_STATE:I = 0x4

.field public static final blacklist POLICY_WINDOW_FOCUS_CHANGE:I = 0x2

.field public static final blacklist TYPE_MAGIC_CELL:I = 0xbb9

.field public static final blacklist TYPE_MAGIC_DEFAULT:I = 0xbb8

.field public static final blacklist TYPE_MAGIC_HORIZONTAL_ARROW:I = 0xbba

.field public static final blacklist TYPE_MAGIC_SPOT:I = 0xbbb

.field public static final blacklist TYPE_MAGIC_TEXT:I = 0xbbc

.field public static final blacklist TYPE_MAGIC_VERTICAL_ARROW:I = 0xbbd


# direct methods
.method public static blacklist get()Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;
    .registers 1

    .line 46
    invoke-static {}, Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;->isMiuiMagicPointerEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    const-class v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;

    return-object v0

    .line 49
    :cond_f
    new-instance v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStub$1;

    invoke-direct {v0}, Landroid/magicpointer/util/MiuiMagicPointerUtilsStub$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist isEnable()Z
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performPolicy(I[Ljava/lang/Object;)V
    .registers 3
    .param p1, "policy"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public blacklist useMagicPointer(Landroid/content/Context;)Z
    .registers 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    return v0
.end method
