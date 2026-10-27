.class public final Landroid/app/ActivityThreadImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "ActivityThreadImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThreadImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/app/ActivityThreadImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/app/ActivityThreadImpl;

    invoke-direct {v0}, Landroid/app/ActivityThreadImpl;-><init>()V

    sput-object v0, Landroid/app/ActivityThreadImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/ActivityThreadImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
