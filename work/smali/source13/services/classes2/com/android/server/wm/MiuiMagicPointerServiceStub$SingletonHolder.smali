.class public final Lcom/android/server/wm/MiuiMagicPointerServiceStub$SingletonHolder;
.super Ljava/lang/Object;
.source "MiuiMagicPointerServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiMagicPointerServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/wm/MiuiMagicPointerServiceStub;

.field private static final STUB_IMPL:Ljava/lang/String; = "com.android.server.magicpointer.MiuiMagicPointerService"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    invoke-static {}, Lcom/android/server/wm/MiuiMagicPointerServiceStub$SingletonHolder;->getStub()Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/MiuiMagicPointerServiceStub$SingletonHolder;->INSTANCE:Lcom/android/server/wm/MiuiMagicPointerServiceStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStub()Lcom/android/server/wm/MiuiMagicPointerServiceStub;
    .registers 1

    .line 30
    :try_start_0
    const-string v0, "com.android.server.magicpointer.MiuiMagicPointerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiMagicPointerServiceStub;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 31
    :catch_d
    move-exception v0

    .line 34
    new-instance v0, Lcom/android/server/wm/MiuiMagicPointerServiceStub$SingletonHolder$1;

    invoke-direct {v0}, Lcom/android/server/wm/MiuiMagicPointerServiceStub$SingletonHolder$1;-><init>()V

    return-object v0
.end method
