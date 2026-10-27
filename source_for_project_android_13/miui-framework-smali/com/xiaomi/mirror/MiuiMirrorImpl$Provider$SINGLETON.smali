.class public final Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MiuiMirrorImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/xiaomi/mirror/MiuiMirrorImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/xiaomi/mirror/MiuiMirrorImpl;

    invoke-direct {v0}, Lcom/xiaomi/mirror/MiuiMirrorImpl;-><init>()V

    sput-object v0, Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider$SINGLETON;->INSTANCE:Lcom/xiaomi/mirror/MiuiMirrorImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
