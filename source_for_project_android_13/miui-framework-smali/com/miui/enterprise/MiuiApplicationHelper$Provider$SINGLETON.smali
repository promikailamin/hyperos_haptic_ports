.class public final Lcom/miui/enterprise/MiuiApplicationHelper$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MiuiApplicationHelper$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/MiuiApplicationHelper$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/enterprise/MiuiApplicationHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/miui/enterprise/MiuiApplicationHelper;

    invoke-direct {v0}, Lcom/miui/enterprise/MiuiApplicationHelper;-><init>()V

    sput-object v0, Lcom/miui/enterprise/MiuiApplicationHelper$Provider$SINGLETON;->INSTANCE:Lcom/miui/enterprise/MiuiApplicationHelper;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
