.class public final Landroid/widget/ToastInjectorImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "ToastInjectorImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ToastInjectorImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/widget/ToastInjectorImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/widget/ToastInjectorImpl;

    invoke-direct {v0}, Landroid/widget/ToastInjectorImpl;-><init>()V

    sput-object v0, Landroid/widget/ToastInjectorImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/ToastInjectorImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
