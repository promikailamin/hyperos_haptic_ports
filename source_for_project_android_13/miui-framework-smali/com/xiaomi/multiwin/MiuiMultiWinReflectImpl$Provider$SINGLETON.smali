.class public final Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MiuiMultiWinReflectImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl;

    invoke-direct {v0}, Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl;-><init>()V

    sput-object v0, Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl$Provider$SINGLETON;->INSTANCE:Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
