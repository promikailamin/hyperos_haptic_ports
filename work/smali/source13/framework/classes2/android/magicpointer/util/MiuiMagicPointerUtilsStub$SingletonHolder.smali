.class public final Landroid/magicpointer/util/MiuiMagicPointerUtilsStub$SingletonHolder;
.super Ljava/lang/Object;
.source "MiuiMagicPointerUtilsStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;

.field private static final blacklist STUB_IMPL:Ljava/lang/String; = "android.magicpointer.util.MiuiMagicPointerUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    invoke-static {}, Landroid/magicpointer/util/MiuiMagicPointerUtilsStub$SingletonHolder;->getStub()Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;

    move-result-object v0

    sput-object v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStub$SingletonHolder;->INSTANCE:Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getStub()Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;
    .registers 1

    .line 32
    invoke-static {}, Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;->isMiuiMagicPointerEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34
    :try_start_6
    const-string v0, "android.magicpointer.util.MiuiMagicPointerUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStub;
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_12} :catch_13
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_12} :catch_13
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_12} :catch_13

    return-object v0

    .line 35
    :catch_13
    move-exception v0

    .line 39
    :cond_14
    new-instance v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStub$SingletonHolder$1;

    invoke-direct {v0}, Landroid/magicpointer/util/MiuiMagicPointerUtilsStub$SingletonHolder$1;-><init>()V

    return-object v0
.end method
