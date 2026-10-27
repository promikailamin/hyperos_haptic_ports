.class public abstract Landroid/app/supervision/SupervisionManager$SupervisionListener;
.super Ljava/lang/Object;
.source "SupervisionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/supervision/SupervisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SupervisionListener"
.end annotation


# instance fields
.field protected final blacklist mListener:Landroid/app/supervision/ISupervisionListener;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/app/supervision/SupervisionManager$SupervisionListener$1;

    invoke-direct {v0, p0}, Landroid/app/supervision/SupervisionManager$SupervisionListener$1;-><init>(Landroid/app/supervision/SupervisionManager$SupervisionListener;)V

    iput-object v0, p0, Landroid/app/supervision/SupervisionManager$SupervisionListener;->mListener:Landroid/app/supervision/ISupervisionListener;

    return-void
.end method


# virtual methods
.method public blacklist onSupervisionDisabled(I)V
    .registers 2

    .line 82
    return-void
.end method

.method public blacklist onSupervisionEnabled(I)V
    .registers 2

    .line 74
    return-void
.end method
