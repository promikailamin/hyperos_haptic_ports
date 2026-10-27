.class public final Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionAidlRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

.field private final blacklist mRequestTime:J

.field private final blacklist mRequestWallTime:J

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;

    invoke-direct {v0}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Landroid/os/UserHandle;Ljava/lang/String;JJ)V
    .registers 8

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    .line 82
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 83
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mCallingPackage:Ljava/lang/String;

    .line 84
    iput-wide p4, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mRequestTime:J

    .line 85
    iput-wide p6, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mRequestWallTime:J

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallingPackage()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    return-object v0
.end method

.method public blacklist getRequestTime()J
    .registers 3

    .line 122
    iget-wide v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mRequestTime:J

    return-wide v0
.end method

.method public blacklist getRequestWallTime()J
    .registers 3

    .line 127
    iget-wide v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mRequestWallTime:J

    return-wide v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 95
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mClientRequest:Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    invoke-virtual {v0, p1, p2}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    iget-object p2, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 98
    iget-wide v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mRequestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->mRequestWallTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    return-void
.end method
