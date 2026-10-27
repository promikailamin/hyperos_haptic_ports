.class public final Landroid/widget/AbsListViewStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "AbsListViewStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListViewStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/widget/AbsListViewStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/widget/AbsListViewStubImpl;

    invoke-direct {v0}, Landroid/widget/AbsListViewStubImpl;-><init>()V

    sput-object v0, Landroid/widget/AbsListViewStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/AbsListViewStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
