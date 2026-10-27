.class public final Landroid/view/SurfaceControlImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "SurfaceControlImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/view/SurfaceControlImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/view/SurfaceControlImpl;

    invoke-direct {v0}, Landroid/view/SurfaceControlImpl;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/SurfaceControlImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
