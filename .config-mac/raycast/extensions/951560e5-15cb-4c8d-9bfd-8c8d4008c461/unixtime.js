"use strict";var i=Object.defineProperty;var n=Object.getOwnPropertyDescriptor;var p=Object.getOwnPropertyNames;var a=Object.prototype.hasOwnProperty;var c=(r,o)=>{for(var e in o)i(r,e,{get:o[e],enumerable:!0})},d=(r,o,e,l)=>{if(o&&typeof o=="object"||typeof o=="function")for(let t of p(o))!a.call(r,t)&&t!==e&&i(r,t,{get:()=>o[t],enumerable:!(l=n(o,t))||l.enumerable});return r};var m=r=>d(i({},"__esModule",{value:!0}),r);var f={};c(f,{default:()=>s});module.exports=m(f);var u=require("@raycast/api"),s=async()=>{(0,u.open)("devutils://unixtime?clipboard")};0&&(module.exports={});