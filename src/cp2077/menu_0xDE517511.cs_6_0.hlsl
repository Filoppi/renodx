#include "../common/color.hlsl"
#include "./colormath.hlsl"
#include "./cp2077.h"
#include "./injectedBuffer.hlsl"

static float _296;

cbuffer _31_33 : register(b0, space0) {
  float4 cb0[30] : packoffset(c0);
}

cbuffer _40_42 : register(b6, space0) {
  float4 cb6[30] : packoffset(c0);
}

cbuffer _36_38 : register(b12, space0) {
  float4 cb12[99] : packoffset(c0);
}

Texture2D<float4> _13 : register(t0, space0);
Texture2D<float4> _14 : register(t1, space0);
Texture2D<float4> _15 : register(t2, space0);
Texture2D<float4> _16 : register(t3, space0);
Texture2D<float4> _17 : register(t5, space0);
Texture2D<float4> _18 : register(t6, space0);
Texture2D<float4> _19 : register(t8, space0);
Texture2D<float4> _8 : register(t32, space0);
Texture2D<uint4> _12 : register(t51, space0);
StructuredBuffer<float> _22 : register(t9, space0);
Texture2D<float4> _23 : register(t10, space0);
RWTexture2D<float4> _26 : register(u0, space0);
RWTexture2D<float4> _27 : register(u1, space0);
SamplerState _45 : register(s0, space0);

static uint3 gl_GlobalInvocationID;

struct SPIRV_Cross_Input {
  uint3 gl_GlobalInvocationID : SV_DispatchThreadID;
};

void comp_main() {
  float _70 = float(gl_GlobalInvocationID.x);
  float _71 = float(gl_GlobalInvocationID.y);
  uint4 _80 = asuint(cb6[12u]);
  float _83 = float(_80.z);
  float _84 = float(_80.w);
  float _85 = (_70 + 0.5f) / _83;
  float _86 = (_71 + 0.5f) / _84;
  bool _102 = ((_85 < cb6[9u].y) || (_86 < cb6[9u].z)) || (((1.0f - cb6[9u].y) < _85) || ((1.0f - cb6[9u].z) < _86));
  float _103;
  float _107;
  float _110;
  if (_102) {
    _103 = 0.0f;
    _107 = 0.0f;
    _110 = 0.0f;
  } else {
    bool _122 = cb6[0u].x > 0.0f;
    float _124 = _85 + (-0.5f);
    float _126 = _86 + (-0.5f);
    float _130 = cb6[0u].y + 0.119999997317790985107421875f;
    float _134 = max(_130 + abs(_124), 0.0f);
    float _135 = max(_130 + abs(_126), 0.0f);
    float _142 = clamp(sqrt((_135 * _135) + (_134 * _134)) * 20.0f, 0.0f, 1.0f);
    float _149 = ((_142 * _142) * cb6[0u].x) * (3.0f - (_142 * 2.0f));
    float _150 = _149 * 0.699999988079071044921875f;
    float _153 = ceil(_150) - _150;
    float _156 = (_153 * 50.0f) + 1.0f;
    float _165 = (((cos(cb0[0u].x) * 2.0f) + 200.0f) * _153) + 1.0f;
    float _177 = frac(floor(_156 * _85) * 0.103100001811981201171875f);
    float _178 = frac(floor(_165 * _86) * 0.103100001811981201171875f);
    float _179 = _178 + 33.3300018310546875f;
    float _181 = _177 + 33.3300018310546875f;
    float _182 = dot(float3(_177, _178, _177), float3(_179, _181, _181));
    float _188 = _178 + _177;
    float _191 = frac((_188 + (_182 * 2.0f)) * (_182 + _177));
    float _216 = abs(sin((_149 * 0.1680000126361846923828125f) * cb0[0u].x));
    float _221 = (_149 * 0.14000000059604644775390625f) + 1.0f;
    float _227 = dot(float3(_178, _177, _178), float3(_181, _179, _179));
    float _240 = (floor(frac(frac((_188 + (_227 * 2.0f)) * (_227 + _178)) + _216) * _221) * (1.0f / (((cos(frac(_191 + abs(sin(cb0[0u].x * 5000.0f))) * cb0[0u].x) * 0.0199999995529651641845703125f) + 1.0f) * _165))) + _86;
    float _242 = _84 * _240;
    float _251 = frac(round((_149 * 0.125f) * _242) * 0.103100001811981201171875f);
    float _252 = frac((_149 * 2.0620000362396240234375f) * cb0[0u].x);
    float _253 = _252 + 33.3300018310546875f;
    float _254 = _251 + 33.3300018310546875f;
    float _255 = dot(float3(_251, _252, _251), float3(_253, _254, _254));
    float _269 = frac(round((_149 * 0.012500000186264514923095703125f) * _242) * 0.103100001811981201171875f);
    float _270 = _269 + 33.3300018310546875f;
    float _271 = dot(float3(_269, _252, _269), float3(_253, _270, _270));
    float _288 = _122 ? ((((_83 * ((floor(frac(_191 + _216) * _221) * (1.0f / (((sin(frac(_191 + abs(sin(cb0[0u].x * 100.0f))) * cb0[0u].x) * 0.0199999995529651641845703125f) + 1.0f) * _156))) + _85)) + 2.0f) + ((((_149 * _149) * 960.0f) * frac(((_252 + _251) + (_255 * 2.0f)) * (_255 + _251))) * frac(((_252 + _269) + (_271 * 2.0f)) * (_271 + _269)))) / _83) : _85;
    float _289 = _122 ? _240 : _86;
    bool _290 = cb6[0u].y > 0.0f;
    bool _294 = cb6[12u].x > 0.0f;
    float _1095;
    float _1096;
    float _1097;
    float _1099;
    float _1101;
    if (_290) {
      float _324 = floor(_288 * 2.5f) * 0.4000000059604644775390625f;
      float _326 = floor(_289 * 10.0f) * 0.100000001490116119384765625f;
      float _328 = _324 + 0.20000000298023223876953125f;
      float _330 = _326 + 0.0500000007450580596923828125f;
      float _334 = floor((cb0[0u].x * 2.0f) + (cb6[0u].y * 20.0f));
      float _335 = _334 * 0.00999999977648258209228515625f;
      float _349 = _328 + (((_335 + 1.0f) - (floor(_334 * 9.9999997473787516355514526367188e-05f) * 100.0f)) * 0.00999999977648258209228515625f);
      float _350 = _330 + (((_334 + 1.0f) - (floor(_335) * 100.0f)) * 0.00999999977648258209228515625f);
      float _360 = frac(_349 * 0.103100001811981201171875f);
      float _361 = frac(_350 * 0.103100001811981201171875f);
      float _363 = _360 + 33.3300018310546875f;
      float _364 = dot(float3(_360, _361, _360), float3(_361 + 33.3300018310546875f, _363, _363));
      float _372 = frac(((_361 + _360) + (_364 * 2.0f)) * (_364 + _360));
      float _375 = ((1.0f - _372) * ((cb6[0u].y * 0.75f) + (-0.100000001490116119384765625f))) + _372;
      float _378 = round(_375 - (_375 * (0.5f - (cb6[0u].y * 0.375f))));
      float _379 = _378 * _378;
      float _380 = _288 - _328;
      float _381 = _289 - _330;
      float _382 = _328 * _349;
      float _383 = _330 * _350;
      float _388 = (_324 + 0.300000011920928955078125f) * _349;
      float _389 = (_326 + 0.1500000059604644775390625f) * _350;
      float _392 = frac(_382 * 0.103100001811981201171875f);
      float _393 = frac(_383 * 0.103100001811981201171875f);
      float _395 = _392 + 33.3300018310546875f;
      float _396 = dot(float3(_392, _393, _392), float3(_393 + 33.3300018310546875f, _395, _395));
      float _409 = frac((_382 + 0.100000001490116119384765625f) * 0.103100001811981201171875f);
      float _410 = frac((_383 + 0.100000001490116119384765625f) * 0.103100001811981201171875f);
      float _412 = _409 + 33.3300018310546875f;
      float _413 = dot(float3(_409, _410, _409), float3(_410 + 33.3300018310546875f, _412, _412));
      float _427 = floor(frac(((_393 + _392) + (_396 * 2.0f)) * (_396 + _392)) * 3.25f) * 0.100000001490116119384765625f;
      float _428 = floor(frac(((_410 + _409) + (_413 * 2.0f)) * (_413 + _409)) * 3.25f) * 0.02500000037252902984619140625f;
      float _430 = _427 + (-0.20000000298023223876953125f);
      float _432 = _428 + (-0.0500000007450580596923828125f);
      float _436 = frac(_388 * 0.103100001811981201171875f);
      float _437 = frac(_389 * 0.103100001811981201171875f);
      float _439 = _436 + 33.3300018310546875f;
      float _440 = dot(float3(_436, _437, _436), float3(_437 + 33.3300018310546875f, _439, _439));
      float _453 = frac((_388 + 0.100000001490116119384765625f) * 0.103100001811981201171875f);
      float _454 = frac((_389 + 0.100000001490116119384765625f) * 0.103100001811981201171875f);
      float _456 = _453 + 33.3300018310546875f;
      float _457 = dot(float3(_453, _454, _453), float3(_454 + 33.3300018310546875f, _456, _456));
      float _470 = floor(frac(((_437 + _436) + (_440 * 2.0f)) * (_440 + _436)) * 3.25f) * 0.100000001490116119384765625f;
      float _471 = floor(frac(((_454 + _453) + (_457 * 2.0f)) * (_457 + _453)) * 3.25f) * 0.02500000037252902984619140625f;
      float _472 = _470 + (-0.20000000298023223876953125f);
      float _473 = _471 + (-0.0500000007450580596923828125f);
      float _476 = _380 - _430;
      float _477 = _381 - _432;
      float _487 = (-0.0250000059604644775390625f) - _380;
      float _489 = _487 + _427;
      float _490 = (-0.006250001490116119384765625f) - _381;
      float _492 = _490 + _428;
      uint _507 = (((((uint(_489 > 0.0f) + ((_489 < 0.0f) ? 4294967295u : 0u)) + ((_476 < 0.0f) ? 4294967295u : 0u)) + uint(_476 > 0.0f)) + ((_477 < 0.0f) ? 4294967295u : 0u)) + uint(_477 > 0.0f)) + (uint(_492 > 0.0f) - uint(_492 < 0.0f));
      float _515 = min(float(int(uint(int(_507) > int(3u)) - uint(int(_507) < int(3u)))), 0.0f);
      float _520 = _380 - _472;
      float _521 = _381 - _473;
      float _530 = _487 + _470;
      float _531 = _490 + _471;
      uint _546 = (((((uint(_530 > 0.0f) + ((_530 < 0.0f) ? 4294967295u : 0u)) + ((_520 < 0.0f) ? 4294967295u : 0u)) + uint(_520 > 0.0f)) + ((_521 < 0.0f) ? 4294967295u : 0u)) + uint(_521 > 0.0f)) + (uint(_531 > 0.0f) - uint(_531 < 0.0f));
      float _553 = min(float(int(uint(int(_546) > int(3u)) - uint(int(_546) < int(3u)))), 0.0f);
      float _560 = _288 + ((_379 * (((_430 - _472) * _553) + ((_472 - _430) * _515))) * 1.2000000476837158203125f);
      float _564 = _289 + ((_379 * (((_432 - _473) * _553) + ((_473 - _432) * _515))) * 1.2000000476837158203125f);
      uint _565 = uint(_85);
      uint _566 = uint(_86);
      float4 _567 = _8.Load(int3(uint2(_565, _566), 0u));
      float _569 = _567.y;
      float _877;
      if (_294) {
        uint _796 = 1u << (_12.Load(int3(uint2(uint(cb12[79u].x * float(_565)), uint(cb12[79u].y * float(_566))), 0u)).y & 31u);
        float4 _799 = _14.Load(int3(uint2(_565 & 255u, _566 & 255u), 0u));
        float _802 = _799.y;
        float _806 = ((_799.x + _802) + _799.z) * 0.3333333432674407958984375f;
        float _807 = cb6[12u].x * _569;
        float _814 = _802 - _806;
        float _816 = _806 + (-0.5f);
        uint4 _822 = asuint(cb6[17u]);
        float _871 = (((((((_816 + (cb6[18u].w * _814)) * cb6[18u].y) * float(min((_822.x & _796), 1u))) + 1.0f) * (_807 / max(1.0f - _807, 9.9999999747524270787835121154785e-07f))) * ((((_816 + (cb6[19u].w * _814)) * cb6[19u].y) * float(min((_822.y & _796), 1u))) + 1.0f)) * ((((_816 + (cb6[20u].w * _814)) * cb6[20u].y) * float(min((_822.z & _796), 1u))) + 1.0f)) * ((((_816 + (cb6[21u].w * _814)) * cb6[21u].y) * float(min((_822.w & _796), 1u))) + 1.0f);
        _877 = cb6[12u].y * (_871 / max(_871 + 1.0f, 1.0f));
      } else {
        _877 = _569;
      }
      float _879 = _877 * cb6[0u].y;
      float _881 = (_560 + (-0.5f)) + _879;
      float _883 = (0.5f - _564) + _879;
      float _885 = atan(_883 / _881);
      bool _890 = _881 < 0.0f;
      bool _891 = _881 == 0.0f;
      bool _892 = _883 >= 0.0f;
      bool _893 = _883 < 0.0f;
      float _907 = sqrt((_881 * _881) + (_883 * _883));
      float _910 = ((_891 && _892) ? 1.57079637050628662109375f : ((_891 && _893) ? (-1.57079637050628662109375f) : ((_890 && _893) ? (_885 + (-3.1415927410125732421875f)) : ((_890 && _892) ? (_885 + 3.1415927410125732421875f) : _885)))) + clamp(cb6[0u].y * (_877 * 0.5f), 0.0f, 1.0f);
      uint _921 = uint(_83 * frac((cos(_910) * _907) + 0.5f));
      uint _922 = uint(_84 * frac(0.5f - (sin(_910) * _907)));
      float4 _923 = _8.Load(int3(uint2(_921, _922), 0u));
      float _925 = _923.x;
      float _926 = _923.y;
      float _927 = _923.z;
      float frontier_phi_14_12_ladder;
      float frontier_phi_14_12_ladder_1;
      float frontier_phi_14_12_ladder_2;
      float frontier_phi_14_12_ladder_3;
      float frontier_phi_14_12_ladder_4;
      if (_294) {
        uint _1236 = 1u << (_12.Load(int3(uint2(uint(cb12[79u].x * float(_921)), uint(cb12[79u].y * float(_922))), 0u)).y & 31u);
        float4 _1239 = _14.Load(int3(uint2(_921 & 255u, _922 & 255u), 0u));
        float _1241 = _1239.x;
        float _1242 = _1239.y;
        float _1243 = _1239.z;
        float _1246 = ((_1241 + _1242) + _1243) * 0.3333333432674407958984375f;
        float _1247 = cb6[12u].x * _925;
        float _1248 = cb6[12u].x * _926;
        float _1249 = cb6[12u].x * _927;
        float _1262 = _1241 - _1246;
        float _1263 = _1242 - _1246;
        float _1264 = _1243 - _1246;
        float _1268 = _1246 + (-0.5f);
        uint4 _1280 = asuint(cb6[17u]);
        float _1284 = float(min((_1280.x & _1236), 1u));
        float _1312 = float(min((_1280.y & _1236), 1u));
        float _1340 = float(min((_1280.z & _1236), 1u));
        float _1368 = float(min((_1280.w & _1236), 1u));
        float _1375 = (((((((_1268 + (cb6[18u].w * _1262)) * cb6[18u].x) * _1284) + 1.0f) * (_1247 / max(1.0f - _1247, 9.9999999747524270787835121154785e-07f))) * ((((_1268 + (cb6[19u].w * _1262)) * cb6[19u].x) * _1312) + 1.0f)) * ((((_1268 + (cb6[20u].w * _1262)) * cb6[20u].x) * _1340) + 1.0f)) * ((((_1268 + (cb6[21u].w * _1262)) * cb6[21u].x) * _1368) + 1.0f);
        float _1376 = (((((((_1268 + (cb6[18u].w * _1263)) * cb6[18u].y) * _1284) + 1.0f) * (_1248 / max(1.0f - _1248, 9.9999999747524270787835121154785e-07f))) * ((((_1268 + (cb6[19u].w * _1263)) * cb6[19u].y) * _1312) + 1.0f)) * ((((_1268 + (cb6[20u].w * _1263)) * cb6[20u].y) * _1340) + 1.0f)) * ((((_1268 + (cb6[21u].w * _1263)) * cb6[21u].y) * _1368) + 1.0f);
        float _1377 = (((((((_1268 + (cb6[18u].w * _1264)) * cb6[18u].z) * _1284) + 1.0f) * (_1249 / max(1.0f - _1249, 9.9999999747524270787835121154785e-07f))) * ((((_1268 + (cb6[19u].w * _1264)) * cb6[19u].z) * _1312) + 1.0f)) * ((((_1268 + (cb6[20u].w * _1264)) * cb6[20u].z) * _1340) + 1.0f)) * ((((_1268 + (cb6[21u].w * _1264)) * cb6[21u].z) * _1368) + 1.0f);
        frontier_phi_14_12_ladder = _564;
        frontier_phi_14_12_ladder_1 = _560;
        frontier_phi_14_12_ladder_2 = cb6[12u].y * (_1375 / max(_1375 + 1.0f, 1.0f));
        frontier_phi_14_12_ladder_3 = cb6[12u].y * (_1376 / max(_1376 + 1.0f, 1.0f));
        frontier_phi_14_12_ladder_4 = cb6[12u].y * (_1377 / max(_1377 + 1.0f, 1.0f));
      } else {
        frontier_phi_14_12_ladder = _564;
        frontier_phi_14_12_ladder_1 = _560;
        frontier_phi_14_12_ladder_2 = _925;
        frontier_phi_14_12_ladder_3 = _926;
        frontier_phi_14_12_ladder_4 = _927;
      }
      _1095 = frontier_phi_14_12_ladder_1;
      _1096 = frontier_phi_14_12_ladder;
      _1097 = frontier_phi_14_12_ladder_2;
      _1099 = frontier_phi_14_12_ladder_3;
      _1101 = frontier_phi_14_12_ladder_4;
    } else {
      float4 _570 = _8.Load(int3(uint2(gl_GlobalInvocationID.x, gl_GlobalInvocationID.y), 0u));
      float _572 = _570.x;
      float _573 = _570.y;
      float _574 = _570.z;
      float frontier_phi_14_6_ladder;
      float frontier_phi_14_6_ladder_1;
      float frontier_phi_14_6_ladder_2;
      float frontier_phi_14_6_ladder_3;
      float frontier_phi_14_6_ladder_4;
      if (_294) {
        uint _940 = 1u << (_12.Load(int3(uint2(uint(cb12[79u].x * _70), uint(cb12[79u].y * _71)), 0u)).y & 31u);
        float4 _943 = _14.Load(int3(uint2(gl_GlobalInvocationID.x & 255u, gl_GlobalInvocationID.y & 255u), 0u));
        float _945 = _943.x;
        float _946 = _943.y;
        float _947 = _943.z;
        float _950 = ((_945 + _946) + _947) * 0.3333333432674407958984375f;
        float _951 = cb6[12u].x * _572;
        float _952 = cb6[12u].x * _573;
        float _953 = cb6[12u].x * _574;
        float _966 = _945 - _950;
        float _967 = _946 - _950;
        float _968 = _947 - _950;
        float _972 = _950 + (-0.5f);
        uint4 _984 = asuint(cb6[17u]);
        float _988 = float(min((_984.x & _940), 1u));
        float _1016 = float(min((_984.y & _940), 1u));
        float _1044 = float(min((_984.z & _940), 1u));
        float _1072 = float(min((_984.w & _940), 1u));
        float _1079 = (((((((_972 + (cb6[18u].w * _966)) * cb6[18u].x) * _988) + 1.0f) * (_951 / max(1.0f - _951, 9.9999999747524270787835121154785e-07f))) * ((((_972 + (cb6[19u].w * _966)) * cb6[19u].x) * _1016) + 1.0f)) * ((((_972 + (cb6[20u].w * _966)) * cb6[20u].x) * _1044) + 1.0f)) * ((((_972 + (cb6[21u].w * _966)) * cb6[21u].x) * _1072) + 1.0f);
        float _1080 = (((((((_972 + (cb6[18u].w * _967)) * cb6[18u].y) * _988) + 1.0f) * (_952 / max(1.0f - _952, 9.9999999747524270787835121154785e-07f))) * ((((_972 + (cb6[19u].w * _967)) * cb6[19u].y) * _1016) + 1.0f)) * ((((_972 + (cb6[20u].w * _967)) * cb6[20u].y) * _1044) + 1.0f)) * ((((_972 + (cb6[21u].w * _967)) * cb6[21u].y) * _1072) + 1.0f);
        float _1081 = (((((((_972 + (cb6[18u].w * _968)) * cb6[18u].z) * _988) + 1.0f) * (_953 / max(1.0f - _953, 9.9999999747524270787835121154785e-07f))) * ((((_972 + (cb6[19u].w * _968)) * cb6[19u].z) * _1016) + 1.0f)) * ((((_972 + (cb6[20u].w * _968)) * cb6[20u].z) * _1044) + 1.0f)) * ((((_972 + (cb6[21u].w * _968)) * cb6[21u].z) * _1072) + 1.0f);
        frontier_phi_14_6_ladder = _289;
        frontier_phi_14_6_ladder_1 = _288;
        frontier_phi_14_6_ladder_2 = cb6[12u].y * (_1079 / max(_1079 + 1.0f, 1.0f));
        frontier_phi_14_6_ladder_3 = cb6[12u].y * (_1080 / max(_1080 + 1.0f, 1.0f));
        frontier_phi_14_6_ladder_4 = cb6[12u].y * (_1081 / max(_1081 + 1.0f, 1.0f));
      } else {
        frontier_phi_14_6_ladder = _289;
        frontier_phi_14_6_ladder_1 = _288;
        frontier_phi_14_6_ladder_2 = _572;
        frontier_phi_14_6_ladder_3 = _573;
        frontier_phi_14_6_ladder_4 = _574;
      }
      _1095 = frontier_phi_14_6_ladder_1;
      _1096 = frontier_phi_14_6_ladder;
      _1097 = frontier_phi_14_6_ladder_2;
      _1099 = frontier_phi_14_6_ladder_3;
      _1101 = frontier_phi_14_6_ladder_4;
    }
    bool _1111 = cb6[1u].z > 0.0f;
    float _1396;
    if ((asuint(cb6[13u]).z != 0u) && _1111) {
      _1396 = (cb6[1u].z * (asfloat(_22.Load(6u).x) + (-1.0f))) + 1.0f;
    } else {
      _1396 = 1.0f;
    }
    float _1401 = _1095 + (-0.5f);
    float _1403 = (_1096 + (-0.5f)) * 2.0f;
    float _1411 = _1095 - (((_1403 * _1403) * _1401) * cb6[3u].x);
    float _1412 = _1096 - ((((_1401 * _1401) * 2.0f) * _1403) * cb6[3u].y);
    float _1415 = (_1411 + (-0.5f)) * 2.0f;
    float _1416 = (_1412 + (-0.5f)) * 2.0f;
    float _1418 = cb0[0u].x * 0.004999999888241291046142578125f;
    float _1421 = (clamp(_1412, 0.0f, 1.0f) + 1.0f) - _1418;
    float _1426 = clamp(abs(cos(_1421 * 650.0f)), 0.0f, 1.0f);
    float _1432 = clamp(_1411, 0.0f, 1.0f) + 1.0f;
    float _1433 = _1432 - _1418;
    float _1439 = sin(cb0[0u].x);
    float _1440 = _1432 + _1418;
    float _1455 = clamp(((((_1439 + _1439) * 0.100000001490116119384765625f) + 0.540000021457672119140625f) + ((clamp(abs(cos(_1440 * 550.0f)), 0.0f, 1.0f) + clamp(abs(cos(_1433 * 250.0f)), 0.0f, 1.0f)) * 0.1799999773502349853515625f)) * ((_1426 * 0.39999997615814208984375f) + 0.60000002384185791015625f), 0.0f, 1.0f);
    float _1607;
    float _1609;
    float _1611;
    if (cb6[1u].w > 0.0f) {
      float4 _1580 = _18.SampleLevel(_45, float2(_85, _86), 0.0f);
      float _1591 = (clamp(abs(cos(_1421 * 250.0f)), 0.0f, 1.0f) * 0.0007999999797903001308441162109375f) + 0.00120000005699694156646728515625f;
      float _1598 = (_1426 * 0.001199999940581619739532470703125f) + 0.001800000085495412349700927734375f;
      float _1600 = (_1591 + _1580.x) - _1598;
      float _1601 = (_1591 + _1580.y) - _1598;
      float _1602 = (_1591 + _1580.z) - _1598;
      float _1768;
      float _1769;
      float _1770;
      if (cb6[6u].x > 0.0f) {
        float _1758 = clamp((sqrt((_126 * _126) + (_124 * _124)) - cb6[5u].z) / (cb6[5u].w - cb6[5u].z), 0.0f, 1.0f);
        float _1764 = 1.0f - (((_1758 * _1758) * (3.0f - (_1758 * 2.0f))) * cb6[6u].x);
        _1768 = _1764 * _1600;
        _1769 = _1764 * _1601;
        _1770 = _1764 * _1602;
      } else {
        _1768 = _1600;
        _1769 = _1601;
        _1770 = _1602;
      }
      float _1772 = dot(float3(_1768, _1769, _1770), float3(0.2125999927520751953125f, 0.715200006961822509765625f, 0.072200000286102294921875f));
      _1607 = (((_1768 - _1772) * cb6[6u].y) + _1772) * cb6[1u].w;
      _1609 = (((_1769 - _1772) * cb6[6u].y) + _1772) * cb6[1u].w;
      _1611 = (((_1770 - _1772) * cb6[6u].y) + _1772) * cb6[1u].w;
    } else {
      _1607 = 0.0f;
      _1609 = 0.0f;
      _1611 = 0.0f;
    }
    float _1800;
    float _1801;
    float _1802;
    if (cb6[2u].x > 0.0f) {
      float4 _1789 = _17.SampleLevel(_45, float2(_1411, 1.0f - _1412), 0.0f);

      if (injectedData.toneMapGammaCorrection == 1.f) {
        _1789 = pow(srgbFromLinear(max(0, _1789)), 2.2f);
      }
      _1800 = (cb6[2u].x * _1789.x) + _1607;
      _1801 = (cb6[2u].x * _1789.y) + _1609;
      _1802 = (cb6[2u].x * _1789.z) + _1611;
    } else {
      _1800 = _1607;
      _1801 = _1609;
      _1802 = _1611;
    }
    float _1980;
    float _1981;
    float _1982;
    if (_1111) {
      float4 _1943 = _16.SampleLevel(_45, float2(_1095, _1096), 0.0f);
      float4 _1950 = _15.SampleLevel(_45, float2(_1095, _1096), 0.0f);
      float _1955 = _1950.w;
      float _1956 = 1.0f - _1955;
      float _1961 = (_1956 * _1943.w) + _1955;
      _1980 = (((_1961 * ((_1950.x - _1097) + (_1956 * _1943.x))) + _1097) * cb6[1u].z) + _1800;
      _1981 = (((_1961 * ((_1950.y - _1099) + (_1956 * _1943.y))) + _1099) * cb6[1u].z) + _1801;
      _1982 = (((_1961 * ((_1950.z - _1101) + (_1956 * _1943.z))) + _1101) * cb6[1u].z) + _1802;
    } else {
      _1980 = _1800;
      _1981 = _1801;
      _1982 = _1802;
    }
    float _2152;
    float _2154;
    float _2156;
    if (cb6[1u].x > 0.0f) {
      float _2059 = cb6[6u].w * _1415;
      float _2060 = cb6[6u].w * _1416;
      float4 _2064 = _13.SampleLevel(_45, float2(_2059 + _1411, _2060 + _1412), 0.0f);
      float4 _2068 = _13.SampleLevel(_45, float2(_1411, _1412), 0.0f);
      float4 _2075 = _13.SampleLevel(_45, float2(_1411 - _2059, _1412 - _2060), 0.0f);
      float4 _2090 = _13.SampleLevel(_45, float2((cb6[7u].x * _1415) + _1411, (cb6[7u].y * _1416) + _1412), 1.0f);
      float4 _2101 = _13.SampleLevel(_45, float2((cb6[7u].z * _1415) + _1411, (cb6[7u].w * _1416) + _1412), 2.0f);
      float4 _2116 = _13.SampleLevel(_45, float2((cb6[8u].x * _1415) + _1411, (cb6[8u].y * _1416) + _1412), 4.0f);

      if (injectedData.toneMapGammaCorrection == 1.f) {
        _2064 = pow(srgbFromLinear(max(0, _2064)), 2.2f);
        _2068 = pow(srgbFromLinear(max(0, _2068)), 2.2f);
        _2075 = pow(srgbFromLinear(max(0, _2075)), 2.2f);
        _2090 = pow(srgbFromLinear(max(0, _2090)), 2.2f);
        _2101 = pow(srgbFromLinear(max(0, _2101)), 2.2f);
        _2116 = pow(srgbFromLinear(max(0, _2116)), 2.2f);
      }
      float _2148 = 1.0f - (((_2068.w + _2064.w) + _2075.w) * 0.3333333432674407958984375f);
      float _2149 = clamp(_1455 * (((cb6[8u].w * _2101.x) + (cb6[8u].z * _2090.x)) + (cb6[9u].x * _2116.x)), 0.0f, 1.0f) * _2148;
      float _2150 = clamp(_1455 * (((cb6[8u].w * _2101.y) + (cb6[8u].z * _2090.y)) + (cb6[9u].x * _2116.y)), 0.0f, 1.0f) * _2148;
      float _2151 = clamp(_1455 * (((cb6[8u].w * _2101.z) + (cb6[8u].z * _2090.z)) + (cb6[9u].x * _2116.z)), 0.0f, 1.0f) * _2148;
      float _2243;
      float _2244;
      float _2245;
      if (_1111) {
        float _2239 = 1.0f - (dot(float3(cb6[1u].z * _1097, cb6[1u].z * _1099, cb6[1u].z * _1101), float3(0.2125999927520751953125f, 0.715200006961822509765625f, 0.072200000286102294921875f)) * 0.699999988079071044921875f);
        _2243 = _2239 * _2149;
        _2244 = _2239 * _2150;
        _2245 = _2239 * _2151;
      } else {
        _2243 = _2149;
        _2244 = _2150;
        _2245 = _2151;
      }
      float _2247 = dot(float3(_2243, _2244, _2245), float3(0.2125999927520751953125f, 0.715200006961822509765625f, 0.072200000286102294921875f));
      float _2259 = cb6[1u].x * _1396;
      float _2273 = _1411 - cb6[3u].z;
      float _2274 = _1412 - cb6[3u].w;
      float4 _2280 = _13.SampleLevel(_45, float2(_2273, _2274), 0.0f);
      if (injectedData.toneMapGammaCorrection == 1.f) {
        _2280 = pow(srgbFromLinear(max(0, _2280)), 2.2f);
      }
      float _2282 = _2280.w;
      float _2295 = 1.0f - (cb6[4u].x * clamp(exp2(log2(abs((clamp(cb6[4u].y, 0.0f, 1.0f) * (_19.SampleLevel(_45, float2(_2273, _2274), cb6[4u].y + (-1.0f)).w - _2282)) + _2282)) * 0.819999992847442626953125f), 0.0f, 1.0f));
      float _2296 = _1439 * 0.00999999977648258209228515625f;
      float _2324 = (((clamp((cos((_2296 + _1412) * 1700.0f) + 1.0f) * 0.75f, 0.0f, 1.0f) * 0.00850000046193599700927734375f) + 0.00150000001303851604461669921875f) * (((_2296 + 0.540000021457672119140625f) + (_1439 * 0.100000001490116119384765625f)) + ((clamp(abs(cos(_1440 * 350.0f)), 0.0f, 1.0f) + clamp(abs(cos(_1433 * 350.0f)), 0.0f, 1.0f)) * 0.1799999773502349853515625f))) + 0.9900000095367431640625f;
      float _2326 = (_2064.x * 2.0f) * _2324;
      float _2327 = (_2068.y * 2.0f) * _2324;
      float _2328 = (_2075.z * 2.0f) * _2324;
      float _2329 = dot(float3(_2326, _2327, _2328), float3(0.2125999927520751953125f, 0.715200006961822509765625f, 0.072200000286102294921875f));
      float _2356 = cb6[5u].x * _1396;
      float4 _2358 = _19.SampleLevel(_45, float2(_1411, _1412), cb6[5u].y);
      _2152 = (((((_2326 - _2329) * cb6[6u].z) + _2329) * _1396) + ((((_2259 * (((_2243 - _2247) * cb6[6u].z) + _2247)) + _1980) * _2148) * _2295)) + (_2358.x * _2356);
      _2154 = (((((_2327 - _2329) * cb6[6u].z) + _2329) * _1396) + ((((_2259 * (((_2244 - _2247) * cb6[6u].z) + _2247)) + _1981) * _2148) * _2295)) + (_2358.y * _2356);
      _2156 = (((((_2328 - _2329) * cb6[6u].z) + _2329) * _1396) + ((((_2259 * (((_2245 - _2247) * cb6[6u].z) + _2247)) + _1982) * _2148) * _2295)) + (_2358.z * _2356);
    } else {
      _2152 = _1980;
      _2154 = _1981;
      _2156 = _1982;
    }
    float _106;
    float _109;
    float _112;
    if (cb6[1u].y > 0.0f) {
      float4 _2366 = _13.Load(int3(uint2(gl_GlobalInvocationID.x, gl_GlobalInvocationID.y), 0u));
      float _2372 = (_1396 * 2.0f) * cb6[1u].y;
      _106 = (_2372 * _2366.x) + _2152;
      _109 = (_2372 * _2366.y) + _2154;
      _112 = (_2372 * _2366.z) + _2156;
    } else {
      _106 = _2152;
      _109 = _2154;
      _112 = _2156;
    }
    float frontier_phi_1_57_ladder;
    float frontier_phi_1_57_ladder_1;
    float frontier_phi_1_57_ladder_2;
    if (_290) {
      float _2456;
      float _2458;
      float _2460;
      float _2462;
      float _2464;
      float _2466;
      uint _2468;
      _2456 = 1.0f;
      _2458 = 1.0f;
      _2460 = 1.0f;
      _2462 = ((_70 / _83) * 0.800000011920928955078125f) * (_83 / _84);
      _2464 = (_71 / _84) * 5.0f;
      _2466 = 1.0f;
      _2468 = 1u;
      float _2457;
      float _2459;
      float _2461;
      for (;;) {
        float _2470 = float(int(_2468));
        float _2471 = _2470 + _2462;
        float _2472 = _2470 + _2464;
        float _2473 = floor(_2471);
        float _2474 = floor(_2472);
        float _2482 = frac(_2473 * 0.103100001811981201171875f);
        float _2483 = frac(_2474 * 0.10300000011920928955078125f);
        float _2484 = frac(_2473 * 0.097300000488758087158203125f);
        float _2485 = frac(_2474 * 0.109899997711181640625f);
        float _2490 = dot(float4(_2482, _2483, _2484, _2485), float4(_2485 + 33.3300018310546875f, _2484 + 33.3300018310546875f, _2482 + 33.3300018310546875f, _2483 + 33.3300018310546875f));
        float _2493 = _2490 + _2482;
        float _2494 = _2490 + _2483;
        float _2495 = _2490 + _2484;
        float _2496 = _2490 + _2485;
        float _2505 = frac((_2493 + _2494) * _2495);
        float _2506 = frac((_2493 + _2495) * _2494);
        float _2507 = frac((_2494 + _2495) * _2496);
        bool _2526 = frac((_2495 + _2496) * _2493) > 0.5f;
        _2457 = (_2526 ? _2505 : 1.0f) * _2456;
        _2459 = (_2526 ? _2506 : 1.0f) * _2458;
        _2461 = (_2526 ? _2507 : 1.0f) * _2460;
        uint _2469 = _2468 + 1u;
        if (_2469 == 15u) {
          break;
        } else {
          _2456 = _2457;
          _2458 = _2459;
          _2460 = _2461;
          _2462 = (((_2507 * 0.20000000298023223876953125f) * (frac(_2471) - _2466)) * frac(floor(((cb0[0u].x * 0.1500000059604644775390625f) + 300.0f) / _2505) * _2505)) + _2462;
          _2464 = ((_2507 * _2506) * (frac(_2472) - _2466)) + _2464;
          _2466 *= (-2.0f);
          _2468 = _2469;
        }
      }
      float _2544 = floor((cb0[0u].x * 2.0f) + cb6[0u].y);
      float _2545 = _2544 * 0.00999999977648258209228515625f;
      float _2555 = ((_2545 + 1.0f) - (floor(_2544 * 9.9999997473787516355514526367188e-05f) * 100.0f)) * 0.00999999977648258209228515625f;
      float _2556 = ((_2544 + 1.0f) - (floor(_2545) * 100.0f)) * 0.00999999977648258209228515625f;
      float _2561 = 0.5f - (cb6[0u].y * 0.375f);
      float _2562 = (cb6[0u].y * 0.75f) + (-0.100000001490116119384765625f);
      float _2565 = frac((((floor(_1095 * 10.0f) * 0.100000001490116119384765625f) + 0.0500000007450580596923828125f) + _2555) * 0.103100001811981201171875f);
      float _2566 = frac((((floor(_1096 * 33.33333587646484375f) * 0.02999999932944774627685546875f) + 0.014999999664723873138427734375f) + _2556) * 0.103100001811981201171875f);
      float _2568 = _2565 + 33.3300018310546875f;
      float _2569 = dot(float3(_2565, _2566, _2565), float3(_2566 + 33.3300018310546875f, _2568, _2568));
      float _2577 = frac(((_2566 + _2565) + (_2569 * 2.0f)) * (_2569 + _2565));
      float _2580 = ((1.0f - _2577) * _2562) + _2577;
      float _2601 = frac((((floor(_1095 * 11.111110687255859375f) * 0.0900000035762786865234375f) + 0.04500000178813934326171875f) + _2555) * 0.103100001811981201171875f);
      float _2602 = frac((((floor(_1096 * 25.0f) * 0.039999999105930328369140625f) + 0.0199999995529651641845703125f) + _2556) * 0.103100001811981201171875f);
      float _2604 = _2601 + 33.3300018310546875f;
      float _2605 = dot(float3(_2601, _2602, _2601), float3(_2602 + 33.3300018310546875f, _2604, _2604));
      float _2613 = frac(((_2602 + _2601) + (_2605 * 2.0f)) * (_2605 + _2601));
      float _2616 = ((1.0f - _2613) * _2562) + _2613;
      float _2620 = max(0.0f, _2457);
      float _2621 = max(0.0f, _2459);
      float _2622 = max(0.0f, _2461);
      float _2624 = max(_2620, max(_2621, _2622));
      float _2625 = _2624 * _2624;
      float _2626 = _2620 * 2.0f;
      float _2627 = _2621 * 0.100000001490116119384765625f;
      float _2628 = _2622 * 0.25f;
      float _2636 = clamp((round(_2580 - (_2580 * _2561)) * 5.0f) * round(_2616 - (_2616 * _2561)), 0.0f, 1.0f) * 3.0f;
      frontier_phi_1_57_ladder = (((_2627 - _109) + (_2625 * _2627)) * _2636) + _109;
      frontier_phi_1_57_ladder_1 = (((_2628 - _112) + (_2625 * _2628)) * _2636) + _112;
      frontier_phi_1_57_ladder_2 = (((_2626 - _106) + (_2625 * _2626)) * _2636) + _106;
    } else {
      frontier_phi_1_57_ladder = _109;
      frontier_phi_1_57_ladder_1 = _112;
      frontier_phi_1_57_ladder_2 = _106;
    }
    _103 = frontier_phi_1_57_ladder_2;
    _107 = frontier_phi_1_57_ladder;
    _110 = frontier_phi_1_57_ladder_1;
  }
  bool _118 = asuint(cb6[15u]).x == 0u;
  float _295;
  float _298;
  float _300;
  if (_118) {
    _295 = _296;
    _298 = _296;
    _300 = _296;
  } else {
    float4 _307 = _8.Load(int3(uint2(gl_GlobalInvocationID.x, gl_GlobalInvocationID.y), 0u));
    float _310 = _307.x;
    float _311 = _307.y;
    float _312 = _307.z;
    float _779;
    float _780;
    float _781;
    if (cb6[12u].x > 0.0f) {
      uint _616 = 1u << (_12.Load(int3(uint2(uint(cb12[79u].x * _70), uint(cb12[79u].y * _71)), 0u)).y & 31u);
      float4 _620 = _14.Load(int3(uint2(gl_GlobalInvocationID.x & 255u, gl_GlobalInvocationID.y & 255u), 0u));
      float _622 = _620.x;
      float _623 = _620.y;
      float _624 = _620.z;
      float _627 = ((_622 + _623) + _624) * 0.3333333432674407958984375f;
      float _629 = cb6[12u].x * _310;
      float _630 = cb6[12u].x * _311;
      float _631 = cb6[12u].x * _312;
      float _646 = _622 - _627;
      float _647 = _623 - _627;
      float _648 = _624 - _627;
      float _652 = _627 + (-0.5f);
      uint4 _665 = asuint(cb6[17u]);
      float _669 = float(min((_665.x & _616), 1u));
      float _698 = float(min((_665.y & _616), 1u));
      float _727 = float(min((_665.z & _616), 1u));
      float _756 = float(min((_665.w & _616), 1u));
      float _763 = (((((((_652 + (cb6[18u].w * _646)) * cb6[18u].x) * _669) + 1.0f) * (_629 / max(1.0f - _629, 9.9999999747524270787835121154785e-07f))) * ((((_652 + (cb6[19u].w * _646)) * cb6[19u].x) * _698) + 1.0f)) * ((((_652 + (cb6[20u].w * _646)) * cb6[20u].x) * _727) + 1.0f)) * ((((_652 + (cb6[21u].w * _646)) * cb6[21u].x) * _756) + 1.0f);
      float _764 = (((((((_652 + (cb6[18u].w * _647)) * cb6[18u].y) * _669) + 1.0f) * (_630 / max(1.0f - _630, 9.9999999747524270787835121154785e-07f))) * ((((_652 + (cb6[19u].w * _647)) * cb6[19u].y) * _698) + 1.0f)) * ((((_652 + (cb6[20u].w * _647)) * cb6[20u].y) * _727) + 1.0f)) * ((((_652 + (cb6[21u].w * _647)) * cb6[21u].y) * _756) + 1.0f);
      float _765 = (((((((_652 + (cb6[18u].w * _648)) * cb6[18u].z) * _669) + 1.0f) * (_631 / max(1.0f - _631, 9.9999999747524270787835121154785e-07f))) * ((((_652 + (cb6[19u].w * _648)) * cb6[19u].z) * _698) + 1.0f)) * ((((_652 + (cb6[20u].w * _648)) * cb6[20u].z) * _727) + 1.0f)) * ((((_652 + (cb6[21u].w * _648)) * cb6[21u].z) * _756) + 1.0f);
      _779 = cb6[12u].y * (_763 / max(_763 + 1.0f, 1.0f));
      _780 = cb6[12u].y * (_764 / max(_764 + 1.0f, 1.0f));
      _781 = cb6[12u].y * (_765 / max(_765 + 1.0f, 1.0f));
    } else {
      _779 = _310;
      _780 = _311;
      _781 = _312;
    }
    float frontier_phi_3_10_ladder;
    float frontier_phi_3_10_ladder_1;
    float frontier_phi_3_10_ladder_2;
    if (_102) {
      frontier_phi_3_10_ladder = 0.0f;
      frontier_phi_3_10_ladder_1 = 0.0f;
      frontier_phi_3_10_ladder_2 = 0.0f;
    } else {
      float4 _1188 = _16.SampleLevel(_45, float2(_85, _86), 0.0f);
      float4 _1195 = _15.SampleLevel(_45, float2(_85, _86), 0.0f);
      float _1200 = _1195.w;
      float _1201 = 1.0f - _1200;
      float _1206 = (_1201 * _1188.w) + _1200;
      frontier_phi_3_10_ladder = ((_1206 * ((_1195.z - _781) + (_1201 * _1188.z))) + _781) * cb6[1u].z;
      frontier_phi_3_10_ladder_1 = ((_1206 * ((_1195.y - _780) + (_1201 * _1188.y))) + _780) * cb6[1u].z;
      frontier_phi_3_10_ladder_2 = ((_1206 * ((_1195.x - _779) + (_1201 * _1188.x))) + _779) * cb6[1u].z;
    }
    _295 = frontier_phi_3_10_ladder_2;
    _298 = frontier_phi_3_10_ladder_1;
    _300 = frontier_phi_3_10_ladder;
  }
  float _590;
  float _592;
  float _594;
  if (cb6[14u].w > 0.0f) {
    uint4 _578 = asuint(cb6[10u]);
    uint _579 = _578.x;
    uint _581 = _578.z;
    uint _584 = _578.y;
    uint _587 = _578.w;
    float frontier_phi_8_7_ladder;
    float frontier_phi_8_7_ladder_1;
    float frontier_phi_8_7_ladder_2;
    if ((((gl_GlobalInvocationID.x >= _579) && (gl_GlobalInvocationID.x < _581)) && (gl_GlobalInvocationID.y >= _584)) && (gl_GlobalInvocationID.y < _587)) {
      float4 _1136 = _23.SampleLevel(_45, float2((cb6[11u].z * ((_70 - float(int(_579))) / float(int(_581 - _579)))) + cb6[11u].x, (cb6[11u].w * ((_71 - float(int(_584))) / float(int(_587 - _584)))) + cb6[11u].y), 0.0f);
      frontier_phi_8_7_ladder = _1136.y * cb6[14u].w;
      frontier_phi_8_7_ladder_1 = _1136.x * cb6[14u].w;
      frontier_phi_8_7_ladder_2 = _1136.z * cb6[14u].w;
    } else {
      frontier_phi_8_7_ladder = _107;
      frontier_phi_8_7_ladder_1 = _103;
      frontier_phi_8_7_ladder_2 = _110;
    }
    _590 = frontier_phi_8_7_ladder_1;
    _592 = frontier_phi_8_7_ladder;
    _594 = frontier_phi_8_7_ladder_2;
  } else {
    _590 = _103;
    _592 = _107;
    _594 = _110;
  }

  uint4 _599 = asuint(cb6[13u]);

  float3 outputColor1 = float3(_590, _592, _594);
  if (_599.y != 0u) {
    ConvertColorParams params = {
      _599.w,      // outputTypeEnum
      cb6[14u].x,  // paperWhiteScaling
      cb6[14u].y,  // blackFloorAdjust
      cb6[14u].z,  // gammaCorrection
      cb6[16u].x,  // pqSaturation
      float3x3(
        // clang-format off
            cb6[22u].x, cb6[22u].y, cb6[22u].z,
            cb6[23u].x, cb6[23u].y, cb6[23u].z,
            cb6[24u].x, cb6[24u].y, cb6[24u].z
        // clang-format on
      ),                           // pqMatrix
      float3(_70, _71, cb0[0u].x)  // random3
    };
    outputColor1 = convertColor(outputColor1, params);
  }

  _26[uint2(gl_GlobalInvocationID.x, gl_GlobalInvocationID.y)] = float4(outputColor1.rgb, 1.0f);

  if (!118) {
    float3 outputColor2 = float3(_295, _298, _300);
    ConvertColorParams params = {
      _599.w,      // outputTypeEnum
      cb6[15u].y,  // paperWhiteScaling
      cb6[15u].z,  // blackFloorAdjust
      cb6[15u].w,  // gammaCorrection
      cb6[16u].x,  // pqSaturation
      float3x3(
        // clang-format off
            cb6[26u].x, cb6[26u].y, cb6[26u].z,
            cb6[27u].x, cb6[27u].y, cb6[27u].z,
            cb6[28u].x, cb6[28u].y, cb6[28u].z
        // clang-format on
      ),                           // pqMatrix
      float3(_70, _71, cb0[0u].x)  // random3
    };

    outputColor2 = convertColor(outputColor2, params);
    _27[uint2(gl_GlobalInvocationID.x, gl_GlobalInvocationID.y)] = float4(outputColor2.rgb, 1.0f);
  }
}

[numthreads(16, 16, 1)] void main(SPIRV_Cross_Input stage_input) {
  gl_GlobalInvocationID = stage_input.gl_GlobalInvocationID;
  comp_main();
}
