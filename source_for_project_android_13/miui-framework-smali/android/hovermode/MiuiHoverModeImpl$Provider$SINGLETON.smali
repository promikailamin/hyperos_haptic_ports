.class public final Landroid/hovermode/MiuiHoverModeImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MiuiHoverModeImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hovermode/MiuiHoverModeImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/hovermode/MiuiHoverModeImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hovermode/MiuiHoverModeImpl;

    invoke-direct {v0}, Landroid/hovermode/MiuiHoverModeImpl;-><init>()V

    sput-object v0, Landroid/hovermode/MiuiHoverModeImpl$Provider$SINGLETON;->INSTANCE:Landroid/hovermode/MiuiHoverModeImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
