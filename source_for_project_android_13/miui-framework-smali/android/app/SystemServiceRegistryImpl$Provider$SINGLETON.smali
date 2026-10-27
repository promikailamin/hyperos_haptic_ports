.class public final Landroid/app/SystemServiceRegistryImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "SystemServiceRegistryImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistryImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/app/SystemServiceRegistryImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/app/SystemServiceRegistryImpl;

    invoke-direct {v0}, Landroid/app/SystemServiceRegistryImpl;-><init>()V

    sput-object v0, Landroid/app/SystemServiceRegistryImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/SystemServiceRegistryImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
