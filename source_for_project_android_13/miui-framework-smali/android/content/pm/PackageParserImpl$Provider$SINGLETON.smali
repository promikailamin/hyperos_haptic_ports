.class public final Landroid/content/pm/PackageParserImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "PackageParserImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParserImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/content/pm/PackageParserImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/content/pm/PackageParserImpl;

    invoke-direct {v0}, Landroid/content/pm/PackageParserImpl;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParserImpl$Provider$SINGLETON;->INSTANCE:Landroid/content/pm/PackageParserImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
