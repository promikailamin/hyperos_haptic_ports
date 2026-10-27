.class public final Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MiuiFreeformImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/xiaomi/freeform/MiuiFreeformImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/xiaomi/freeform/MiuiFreeformImpl;

    invoke-direct {v0}, Lcom/xiaomi/freeform/MiuiFreeformImpl;-><init>()V

    sput-object v0, Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider$SINGLETON;->INSTANCE:Lcom/xiaomi/freeform/MiuiFreeformImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
