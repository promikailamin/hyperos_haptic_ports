.class public final Landroid/powerconsumption/MiuiDrawableImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MiuiDrawableImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/powerconsumption/MiuiDrawableImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/powerconsumption/MiuiDrawableImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/powerconsumption/MiuiDrawableImpl;

    invoke-direct {v0}, Landroid/powerconsumption/MiuiDrawableImpl;-><init>()V

    sput-object v0, Landroid/powerconsumption/MiuiDrawableImpl$Provider$SINGLETON;->INSTANCE:Landroid/powerconsumption/MiuiDrawableImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
