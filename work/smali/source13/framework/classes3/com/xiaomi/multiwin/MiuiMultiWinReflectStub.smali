.class public interface abstract Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;
.super Ljava/lang/Object;
.source "MiuiMultiWinReflectStub.java"


# static fields
.field public static final blacklist sInstance:Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const-class v0, Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;

    sput-object v0, Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;->sInstance:Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;
    .registers 1

    .line 12
    sget-object v0, Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;->sInstance:Lcom/xiaomi/multiwin/MiuiMultiWinReflectStub;

    return-object v0
.end method


# virtual methods
.method public varargs abstract blacklist invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
