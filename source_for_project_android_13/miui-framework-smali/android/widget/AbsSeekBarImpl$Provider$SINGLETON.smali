.class public final Landroid/widget/AbsSeekBarImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "AbsSeekBarImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBarImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/widget/AbsSeekBarImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/widget/AbsSeekBarImpl;

    invoke-direct {v0}, Landroid/widget/AbsSeekBarImpl;-><init>()V

    sput-object v0, Landroid/widget/AbsSeekBarImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/AbsSeekBarImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
