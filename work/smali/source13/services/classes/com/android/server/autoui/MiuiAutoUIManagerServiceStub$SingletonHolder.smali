.class public final Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub$SingletonHolder;
.super Ljava/lang/Object;
.source "MiuiAutoUIManagerServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;

.field private static final STUB_IMPL:Ljava/lang/String; = "com.android.server.autoui.MiuiAutoUIManagerService"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    invoke-static {}, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub$SingletonHolder;->getStub()Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;

    move-result-object v0

    sput-object v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub$SingletonHolder;->INSTANCE:Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStub()Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;
    .registers 1

    .line 21
    :try_start_0
    const-string v0, "com.android.server.autoui.MiuiAutoUIManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 22
    :catch_d
    move-exception v0

    .line 25
    new-instance v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub$SingletonHolder$1;

    invoke-direct {v0}, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStub$SingletonHolder$1;-><init>()V

    return-object v0
.end method
