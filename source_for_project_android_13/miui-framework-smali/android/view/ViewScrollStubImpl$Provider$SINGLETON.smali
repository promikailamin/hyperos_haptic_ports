.class public final Landroid/view/ViewScrollStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "ViewScrollStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewScrollStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/view/ViewScrollStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/view/ViewScrollStubImpl;

    invoke-direct {v0}, Landroid/view/ViewScrollStubImpl;-><init>()V

    sput-object v0, Landroid/view/ViewScrollStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/ViewScrollStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
