.class public final Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/ExecuteAppFunctionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttribution:Landroid/app/appfunctions/AppFunctionAttribution;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFunctionIdentifier:Ljava/lang/String;

.field private blacklist mParameters:Landroid/app/appsearch/GenericDocument;

.field private final blacklist mTargetPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 203
    new-instance v0, Landroid/app/appsearch/GenericDocument$Builder;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mParameters:Landroid/app/appsearch/GenericDocument;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mAttribution:Landroid/app/appfunctions/AppFunctionAttribution;

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mTargetPackageName:Ljava/lang/String;

    .line 218
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mFunctionIdentifier:Ljava/lang/String;

    .line 219
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .registers 8

    .line 262
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mTargetPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mFunctionIdentifier:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mExtras:Landroid/os/Bundle;

    new-instance v4, Landroid/app/appfunctions/GenericDocumentWrapper;

    iget-object v5, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mParameters:Landroid/app/appsearch/GenericDocument;

    invoke-direct {v4, v5}, Landroid/app/appfunctions/GenericDocumentWrapper;-><init>(Landroid/app/appsearch/GenericDocument;)V

    iget-object v5, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mAttribution:Landroid/app/appfunctions/AppFunctionAttribution;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;Landroid/app/appfunctions/AppFunctionAttribution;Landroid/app/appfunctions/ExecuteAppFunctionRequest-IA;)V

    return-object v0
.end method

.method public blacklist setAttribution(Landroid/app/appfunctions/AppFunctionAttribution;)Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    .registers 2

    .line 255
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appfunctions/AppFunctionAttribution;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mAttribution:Landroid/app/appfunctions/AppFunctionAttribution;

    .line 256
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    .registers 2

    .line 224
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 225
    return-object p0
.end method

.method public whitelist setParameters(Landroid/app/appsearch/GenericDocument;)Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    .registers 2

    .line 235
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mParameters:Landroid/app/appsearch/GenericDocument;

    .line 237
    return-object p0
.end method
