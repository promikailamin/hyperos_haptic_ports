.class public final Landroid/widget/FlingAnimationStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "FlingAnimationStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FlingAnimationStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/widget/FlingAnimationStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/widget/FlingAnimationStubImpl;

    invoke-direct {v0}, Landroid/widget/FlingAnimationStubImpl;-><init>()V

    sput-object v0, Landroid/widget/FlingAnimationStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/FlingAnimationStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
