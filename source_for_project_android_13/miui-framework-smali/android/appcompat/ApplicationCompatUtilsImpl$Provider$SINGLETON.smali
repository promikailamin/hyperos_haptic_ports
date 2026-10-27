.class public final Landroid/appcompat/ApplicationCompatUtilsImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "ApplicationCompatUtilsImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appcompat/ApplicationCompatUtilsImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/appcompat/ApplicationCompatUtilsImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/appcompat/ApplicationCompatUtilsImpl;

    invoke-direct {v0}, Landroid/appcompat/ApplicationCompatUtilsImpl;-><init>()V

    sput-object v0, Landroid/appcompat/ApplicationCompatUtilsImpl$Provider$SINGLETON;->INSTANCE:Landroid/appcompat/ApplicationCompatUtilsImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
