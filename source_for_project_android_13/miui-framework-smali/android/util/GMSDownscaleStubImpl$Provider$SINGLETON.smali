.class public final Landroid/util/GMSDownscaleStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "GMSDownscaleStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/GMSDownscaleStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/util/GMSDownscaleStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/util/GMSDownscaleStubImpl;

    invoke-direct {v0}, Landroid/util/GMSDownscaleStubImpl;-><init>()V

    sput-object v0, Landroid/util/GMSDownscaleStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/util/GMSDownscaleStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
